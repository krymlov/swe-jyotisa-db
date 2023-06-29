package org.jyotisa.db.mysql;

import org.junit.jupiter.api.*;
import org.jyotisa.api.IKundali;
import org.jyotisa.api.dignity.IDignity;
import org.jyotisa.api.graha.IGraha;
import org.jyotisa.api.graha.IGrahaEntity;
import org.jyotisa.api.graha.IGrahaEnum;
import org.jyotisa.api.lagna.ILagna;
import org.jyotisa.api.lagna.ILagnaEntity;
import org.jyotisa.api.lagna.ILagnaEnum;
import org.jyotisa.api.naksatra.INaksatra;
import org.jyotisa.api.naksatra.INaksatraPada;
import org.jyotisa.api.rasi.IRasi;
import org.jyotisa.api.upagraha.IUpagraha;
import org.jyotisa.api.upagraha.IUpagrahaEntity;
import org.jyotisa.api.upagraha.IUpagrahaEnum;
import org.jyotisa.app.Kundali;
import org.jyotisa.bindu.BhriguBindu;
import org.jyotisa.graha.EGraha;
import org.jyotisa.lagna.ELagna;
import org.jyotisa.upagraha.EUpagraha;
import org.swisseph.api.ISweEnumIterator;
import org.swisseph.api.ISweJulianDate;
import org.swisseph.api.ISweObjects;
import org.swisseph.app.SweJulianDate;
import org.swisseph.app.SweObjects;

import java.math.BigInteger;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import static org.jyotisa.app.KundaliOptions.KUNDALI_7_KARAKAS;
import static org.jyotisa.db.sqlutils.SqlUtils.insertBatch;
import static org.jyotisa.graha.EGraha.TEEVRA;
import static org.jyotisa.lagna.ELagna.GHATI_LAGNA;
import static org.jyotisa.upagraha.EUpagraha.UPAKETU;
import static org.swisseph.api.ISweConstants.*;
import static org.swisseph.app.SweObjectsOptions.TRUECITRA_AYANAMSA;
import static org.swisseph.utils.IDateUtils.convert;
import static org.swisseph.utils.IDegreeUtils.toIDMSms;
import static org.swisseph.utils.IModuloUtils.fix30;

public class MySqlDbTest extends AMySqlDbTest {
    public static final int DEFAULT_SECOND = 35;
    public static final int DEFAULT_MINUTE = 32;
    public static final int DEFAULT_HOUR = 18;
    public static final double TIME_ZONE = d0;

    @Test
    @Order(1)
    @Disabled
    public void referenceKundali_2023_1_1() {
        final IKundali kundali = newKundali(newYearDateTime(2023, 1, 1));
        System.out.println(kundali);
    }

    @Test
    @Order(5)
    @Disabled
    public void referenceKundali_2023_07_17() {
        final IKundali kundali = newKundali(newYearDateTime(2023, 7, 17));
        System.out.println(kundali);
    }

    @Order(10)
    @RepeatedTest(2051)
    @Disabled
    public void referenceKundaliTo_2050(RepetitionInfo rinfo) throws SQLException {
        calculateKundaliForYear(2050 - rinfo.getCurrentRepetition());
    }

    void calculateKundaliForYear(final int year) throws SQLException {
        for (int month = 1; month <= 12; month++) {
            calculateKundaliForMonth(year, month);
        }
    }

    void calculateKundaliForMonth(final int year, final int month) throws SQLException {
        LocalDateTime dateTime = newYearDateTime(year, month, 1);
        final List<KundaliObjects> kundalis = new ArrayList<>();

        while (dateTime.getMonth().getValue() == month) {
            final IKundali kundali = newKundali(dateTime);
            kundalis.add(new KundaliObjects(kundali, prepareKundaliObjects(kundali)));
            dateTime = dateTime.plusDays(1);
        }

        insertBatchKundalis(kundalis);
        insertBatchD1BBindu(kundalis);

        final ISweEnumIterator<ILagnaEnum> lagnaIterator = ELagna.iteratorTo(GHATI_LAGNA);
        while (lagnaIterator.hasNext()) insertBatchD1LagnaN(kundalis, lagnaIterator.next().lagna());

        final ISweEnumIterator<IGrahaEnum> grahaIterator = EGraha.iteratorTo(TEEVRA);
        while (grahaIterator.hasNext()) insertBatchD1GrahaN(kundalis, grahaIterator.next().graha());

        final ISweEnumIterator<IUpagrahaEnum> upagrahaIterator = EUpagraha.iteratorTo(UPAKETU);
        while (upagrahaIterator.hasNext()) insertBatchD1UpagrahaN(kundalis, upagrahaIterator.next().upagraha());
    }

    IKundali newKundali(final LocalDateTime ldt) {
        final int[] dt = new int[]{ldt.getYear(), ldt.getMonthValue(),
                ldt.getDayOfMonth(), ldt.getHour(), ldt.getMinute(), ldt.getSecond()};
        final SweJulianDate julianDate = new SweJulianDate(dt, (float) TIME_ZONE, SweJulianDate.localTime(dt));
        ISweObjects sweObjects = new SweObjects(getSwephExp(), julianDate, GEO_KYIV, TRUECITRA_AYANAMSA);
        return new Kundali(KUNDALI_7_KARAKAS, sweObjects.completeBuild());
    }

    Object[] prepareKundaliObjects(final IKundali kundali) {
        final ISweObjects sweObjects = kundali.sweObjects();
        final ISweJulianDate jd = sweObjects.sweJulianDate();
        return new Object[]{1, convert(jd), 0, toIDMSms(kundali.fields()
                .siderealTime()), toIDMSms(sweObjects.ayanamsa()), jd.julianDay()};
    }

    void insertBatchKundalis(List<KundaliObjects> kundalis) throws SQLException {
        final Object[][] batch = new Object[kundalis.size()][];
        for (int i = 0; i < kundalis.size(); i++) batch[i] = kundalis.get(i).kundaliObjects;
        List<Object[]> ids = insertBatch("INSERT INTO kundali VALUES(0,?,?,?,?,?,?)", batch);
        Assertions.assertEquals(kundalis.size(), ids.size());

        for (int i = 0; i < kundalis.size(); i++) {
            kundalis.get(i).kundaliId = ((BigInteger) ids.get(i)[0]).intValue();
            kundalis.get(i).kundaliObjects = null;
        }
    }

    void insertBatchD1LagnaN(List<KundaliObjects> kundalis, ILagna lagna) throws SQLException {
        final Object[][] batch = new Object[kundalis.size()][];
        for (int i = 0; i < kundalis.size(); i++) batch[i] = prepareD1LagnaN(kundalis.get(i), lagna);
        List<Object[]> ids = insertBatch("INSERT INTO d1_lagna" + lagna.fid()
                + " VALUES(?,?,?,?,?,?,?,?,?,?)", batch);
        Assertions.assertEquals(0, ids.size());
    }

    Object[] prepareD1LagnaN(final KundaliObjects kundaliObjects, ILagna lagna) {
        final ILagnaEntity entity = kundaliObjects.kundali.lagnas().all()[lagna.fid()];
        final double longitude = entity.longitude();
        final INaksatraPada pada = entity.pada();
        return new Object[]{kundaliObjects.kundaliId, 1, pada.rasi().fid(),
                Math.round(IRasi.progress(longitude)), pada.naksatra().fid(), pada.pada(),
                Math.round(INaksatra.progress(longitude)), pada.navamsa().fid(),
                toIDMSms(fix30(longitude)), toIDMSms(longitude)};

    }

    void insertBatchD1BBindu(List<KundaliObjects> kundalis) throws SQLException {
        final Object[][] batch = new Object[kundalis.size()][];
        for (int i = 0; i < kundalis.size(); i++) batch[i] = prepareD1BBindu(kundalis.get(i));
        List<Object[]> ids = insertBatch("INSERT INTO d1_bbindu VALUES(?,?,?,?,?,?,?,?,?,?)", batch);
        Assertions.assertEquals(0, ids.size());
    }

    Object[] prepareD1BBindu(final KundaliObjects kundaliObjects) {
        final BhriguBindu bbindu = new BhriguBindu(kundaliObjects.kundali);
        final double longitude = bbindu.longitude();
        final INaksatraPada pada = bbindu.pada();
        return new Object[]{kundaliObjects.kundaliId, bbindu.bhava().fid(), pada.rasi().fid(),
                Math.round(IRasi.progress(longitude)), pada.naksatra().fid(), pada.pada(),
                Math.round(INaksatra.progress(longitude)), pada.navamsa().fid(),
                toIDMSms(fix30(longitude)), toIDMSms(longitude)};

    }

    void insertBatchD1GrahaN(List<KundaliObjects> kundalis, IGraha graha) throws SQLException {
        final Object[][] batch = new Object[kundalis.size()][];
        for (int i = 0; i < kundalis.size(); i++) {
            batch[i] = prepareD1GrahaN(kundalis.get(i), graha);
        }
        List<Object[]> ids = insertBatch("INSERT INTO d1_graha" + graha.fid()
                + " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", batch);
        Assertions.assertEquals(0, ids.size());
    }

    Object[] prepareD1GrahaN(final KundaliObjects kundaliObjects, IGraha graha) {
        final IGrahaEntity entity = kundaliObjects.kundali.grahas().all()[graha.uid()];
        final INaksatraPada pada = entity.pada();
        final IDignity dignity = entity.dignity();
        final double longitude = entity.longitude();
        final int intDignity = dignity == null ? 0 : dignity.fid();
        final int mrityuBhaga = (int) entity.entityEnum().inMrityuBhaga(longitude);
        final int charaKaraka = entity.charaKaraka() == null ? 0 : entity.charaKaraka().fid();
        return new Object[]{kundaliObjects.kundaliId, charaKaraka, mrityuBhaga, intDignity, entity.vakri() ? 1 : 0,
                entity.bhava().fid(), pada.rasi().fid(), Math.round(IRasi.progress(longitude)),
                pada.naksatra().fid(), pada.pada(), Math.round(INaksatra.progress(longitude)),
                pada.navamsa().fid(), toIDMSms(fix30(longitude)),
                toIDMSms(longitude), toIDMSms(entity.latitude())};
    }

    void insertBatchD1UpagrahaN(List<KundaliObjects> kundalis, IUpagraha upagraha) throws SQLException {
        final Object[][] batch = new Object[kundalis.size()][];
        for (int i = 0; i < kundalis.size(); i++) {
            batch[i] = prepareD1UpagrahaN(kundalis.get(i), upagraha);
        }
        List<Object[]> ids = insertBatch("INSERT INTO d1_upagraha" + upagraha.fid()
                + " VALUES(?,?,?,?,?,?,?,?,?,?)", batch);
        Assertions.assertEquals(0, ids.size());
    }

    Object[] prepareD1UpagrahaN(final KundaliObjects kundaliObjects, IUpagraha upagraha) {
        IUpagrahaEntity entity = kundaliObjects.kundali.upagrahas().all()[upagraha.fid()];
        final INaksatraPada pada = entity.pada();
        final double longitude = entity.longitude();
        return new Object[]{kundaliObjects.kundaliId, entity.bhava().fid(), pada.rasi().fid(),
                Math.round(IRasi.progress(longitude)), pada.naksatra().fid(), pada.pada(),
                Math.round(INaksatra.progress(longitude)), pada.navamsa().fid(),
                toIDMSms(fix30(longitude)), toIDMSms(longitude)};
    }

    LocalDateTime newYearDateTime(int year, int month, int dayOfMonth) {
        return LocalDateTime.of(year, month, dayOfMonth, DEFAULT_HOUR, DEFAULT_MINUTE, DEFAULT_SECOND);
    }

    static final class KundaliObjects {
        Object[] kundaliObjects;
        final IKundali kundali;
        int kundaliId;

        public KundaliObjects(IKundali kundali, Object[] kundaliObjects) {
            this.kundaliObjects = kundaliObjects;
            this.kundali = kundali;
        }
    }

}
