/*
 * Author    Yura
 * Created   2020-02
 */

package org.jyotisa.db.enums;

import org.apache.commons.text.StringSubstitutor;
import org.bson.Document;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.parallel.Execution;
import org.junit.jupiter.api.parallel.ExecutionMode;
import org.jyotisa.api.IKundaliEnum;
import org.jyotisa.api.bhava.IBhava;
import org.jyotisa.api.naksatra.INaksatra;
import org.jyotisa.api.rasi.IRasi;
import org.jyotisa.api.tithi.ITithi;
import org.jyotisa.bhava.EBhava;
import org.jyotisa.db.AJyotisaTest;
import org.jyotisa.dignity.EDignity;
import org.jyotisa.graha.EGraha;
import org.jyotisa.karaka.ECharaKaraka;
import org.jyotisa.karana.EKarana;
import org.jyotisa.lagna.ELagna;
import org.jyotisa.maasa.EMaasa;
import org.jyotisa.naksatra.ENaksatra;
import org.jyotisa.naksatra.ENaksatraPada;
import org.jyotisa.nityayoga.ENityaYoga;
import org.jyotisa.rasi.ERasi;
import org.jyotisa.tattva.ETattva;
import org.jyotisa.tithi.ETithi;
import org.jyotisa.upagraha.EUpagraha;
import org.jyotisa.vaara.EVaara;
import org.jyotisa.varga.EVarga;
import org.jyotisa.vimsottari.EVimsottariDasa;
import org.swisseph.api.ISweEnum;
import org.swisseph.utils.IDegreeUtils;

import java.util.Arrays;
import java.util.Comparator;

import static org.apache.commons.lang3.BooleanUtils.toInteger;
import static org.swisseph.utils.IDegreeUtils.toIDMSms;

/**
 * @author Yura
 * @version 1.0, 2020-02
 */
@Execution(ExecutionMode.SAME_THREAD)
public class JyotishEntitySqlTest extends AJyotisaTest {

    protected StringBuilder createInsertStmt(IKundaliEnum[] values, String table) {
        String strPatterns = "INSERT INTO ${table} VALUES (${id},${fid},'${code}','${name}');";
        StringBuilder builder = new StringBuilder(1024);

        Arrays.sort(values, Comparator.comparingInt(ISweEnum::fid));

        for (IKundaliEnum value : values) {
            Document document = kundaliEnumProps(value).append("table", table);
            StringSubstitutor substr = new StringSubstitutor(document);
            String statement = substr.replace(strPatterns);
            builder.append(statement).append('\n');
        }

        System.out.println(builder);
        return builder;
    }

    protected StringBuilder createBhavaInsertStmt(EBhava[] values, String table) {
        String strPatterns = "INSERT INTO ${table} VALUES (${id},${fid}," +
                "${trikona},${kendra},${apoklima},${upachaya},${apachaya}," +
                "${dusthana},${panapara},${chaturasra},${maraka},${trishadaya}," +
                "'${code}','${name}');";
        StringBuilder builder = new StringBuilder(1024);

        Arrays.sort(values, Comparator.comparingInt(ISweEnum::fid));

        for (EBhava value : values) {
            IBhava bhava = value.bhava();
            Document document = kundaliEnumProps(value).append("table", table);
            document.append("trikona", null == bhava ? 0 : toInteger(bhava.trikona()));
            document.append("kendra", null == bhava ? 0 : toInteger(bhava.kendra()));
            document.append("apoklima", null == bhava ? 0 : toInteger(bhava.apoklima()));
            document.append("upachaya", null == bhava ? 0 : toInteger(bhava.upachaya()));
            document.append("apachaya", null == bhava ? 0 : toInteger(bhava.apachaya()));
            document.append("dusthana", null == bhava ? 0 : toInteger(bhava.dusthana()));
            document.append("panapara", null == bhava ? 0 : toInteger(bhava.panapara()));
            document.append("chaturasra", null == bhava ? 0 : toInteger(bhava.chaturasra()));
            document.append("maraka", null == bhava ? 0 : toInteger(bhava.maraka()));
            document.append("trishadaya", null == bhava ? 0 : toInteger(bhava.trishadaya()));
            StringSubstitutor substr = new StringSubstitutor(document);
            String statement = substr.replace(strPatterns);
            builder.append(statement).append('\n');
        }

        System.out.println(builder);
        return builder;
    }

    protected StringBuilder createRasiInsertStmt(ERasi[] values, String table) {
        String strPatterns = "INSERT INTO ${table} VALUES (${id},${fid}," +
                "${movable},${fixed},${dual},${tattva},${lord}," +
                "${start},${close},'${code}','${name}');";
        StringBuilder builder = new StringBuilder(1024);

        Arrays.sort(values, Comparator.comparingInt(ISweEnum::fid));

        for (ERasi value : values) {
            IRasi rasi = value.rasi();
            Document document = kundaliEnumProps(value).append("table", table);
            document.append("movable", null == rasi ? 0 : toInteger(rasi.movable()));
            document.append("fixed", null == rasi ? 0 : toInteger(rasi.fixed()));
            document.append("dual", null == rasi ? 0 : toInteger(rasi.dual()));
            document.append("tattva", null == rasi ? 0 : rasi.tattva().fid());
            document.append("lord", null == rasi ? 0 : rasi.lord().fid());
            document.append("start", null == rasi ? 0 : toIDMSms(value.segment().start()));
            document.append("close", null == rasi ? 0 : toIDMSms(value.segment().close()));
            StringSubstitutor substr = new StringSubstitutor(document);
            String statement = substr.replace(strPatterns);
            builder.append(statement).append('\n');
        }

        System.out.println(builder);
        return builder;
    }

    protected StringBuilder createNaksatraInsertStmt(ENaksatra[] values, String table) {
        String strPatterns = "INSERT INTO ${table} VALUES (${id},${fid}," +
                "${lord},${start},${close},'${code}','${name}');";
        StringBuilder builder = new StringBuilder(1024);

        Arrays.sort(values, Comparator.comparingInt(ISweEnum::fid));

        for (ENaksatra value : values) {
            INaksatra naksatra = value.naksatra();
            Document document = kundaliEnumProps(value).append("table", table);
            document.append("lord", null == naksatra ? 0 : naksatra.lord().fid());
            document.append("start", null == naksatra ? 0 : toIDMSms(value.segment().start()));
            document.append("close", null == naksatra ? 0 : toIDMSms(value.segment().close()));
            StringSubstitutor substr = new StringSubstitutor(document);
            String statement = substr.replace(strPatterns);
            builder.append(statement).append('\n');
        }

        System.out.println(builder);
        return builder;
    }

    protected StringBuilder createPadaInsertStmt(ENaksatraPada[] values, String table) {
        String strPatterns = "INSERT INTO ${table} VALUES (${id},${fid},${naksatra},${pada}," +
                "${rasi},${navamsa},${start},${close},'${code}','${name}');";
        StringBuilder builder = new StringBuilder(1024);

        Arrays.sort(values, Comparator.comparingInt(ISweEnum::fid));

        for (ENaksatraPada value : values) {
            Document document = kundaliEnumProps(value).append("table", table);
            document.append("rasi", value.rasi() == null ? 0 : value.rasi().fid());
            document.append("navamsa", value.navamsa() == null ? 0 : value.navamsa().fid());
            document.append("naksatra", value.naksatra() == null ? 0 : value.naksatra().fid());
            document.append("start", toIDMSms(value.segment().start()));
            document.append("close", toIDMSms(value.segment().close()));
            document.append("pada", value.pada());
            StringSubstitutor substr = new StringSubstitutor(document);
            String statement = substr.replace(strPatterns);
            builder.append(statement).append('\n');
        }

        System.out.println(builder);
        return builder;
    }

    protected StringBuilder createTithiInsertStmt(ETithi[] values, String table) {
        String strPatterns = "INSERT INTO ${table} VALUES (${id},${fid}," +
                "${paksa},${lord},${start},${close},'${code}','${name}');";
        StringBuilder builder = new StringBuilder(1024);

        Arrays.sort(values, Comparator.comparingInt(ISweEnum::fid));

        for (ETithi value : values) {
            ITithi tithi = value.tithi();
            Document document = kundaliEnumProps(value).append("table", table);
            document.append("paksa", tithi == null ? 0 : tithi.paksa().fid());
            document.append("lord", tithi == null ? 0 : tithi.lord().fid());
            document.append("start", tithi == null ? 0 : toIDMSms(value.segment().start()));
            document.append("close", tithi == null ? 0 : toIDMSms(value.segment().close()));
            StringSubstitutor substr = new StringSubstitutor(document);
            String statement = substr.replace(strPatterns);
            builder.append(statement).append('\n');
        }

        System.out.println(builder);
        return builder;
    }

    @Test
    void insertTattva() {
        createInsertStmt(ETattva.values(), "tattva");
    }

    @Test
    void insertBhava() {
        createBhavaInsertStmt(EBhava.values(), "bhava");
    }

    @Test
    void insertVDasa() {
        createInsertStmt(EVimsottariDasa.values(), "vim_dasa");
    }

    @Test
    void insertDignity() {
        createInsertStmt(EDignity.values(), "dignity");
    }

    @Test
    void insertGraha() {
        createInsertStmt(EGraha.values(), "graha");
    }

    @Test
    void insertKaraka() {
        createInsertStmt(ECharaKaraka.values(), "chara_karaka");
    }

    @Test
    void insertKarana() {
        createInsertStmt(EKarana.values(), "karana");
    }

    @Test
    void insertLagna() {
        createInsertStmt(ELagna.values(), "lagna");
    }

    @Test
    void insertNaksatra() {
        createNaksatraInsertStmt(ENaksatra.values(), "naksatra");
    }

    @Test
    void insertNPada() {
        createPadaInsertStmt(ENaksatraPada.values(), "naksatra_pada");
    }

    @Test
    void insertRasi() {
        createRasiInsertStmt(ERasi.values(), "rasi");
    }

    @Test
    void insertTithi() {
        createTithiInsertStmt(ETithi.values(), "tithi");
    }

    @Test
    void insertUpagraha() {
        createInsertStmt(EUpagraha.values(), "upagraha");
    }

    @Test
    void insertVaara() {
        createInsertStmt(EVaara.values(), "vaara");
    }

    @Test
    void insertVarga() {
        createInsertStmt(EVarga.values(), "varga");
    }

    @Test
    void insertNityaYoga() {
        createInsertStmt(ENityaYoga.values(), "nitya_yoga");
    }

    @Test
    void insertMaasa() {
        createInsertStmt(EMaasa.values(), "maasa");
    }
}
