/*
 * Author    Yura
 * Created   2020-01
 */

package org.jyotisa.db;

import org.bson.Document;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.parallel.Execution;
import org.junit.jupiter.api.parallel.ExecutionMode;
import org.jyotisa.api.IKundaliEnum;
import org.swisseph.ISwissEph;
import org.swisseph.SwephNative;
import org.swisseph.api.ISweEnum;
import org.swisseph.api.ISweGeoLocation;
import org.swisseph.app.SweGeoLocation;

import static org.swisseph.api.ISweConstants.EPHE_PATH;

/**
 * @author Yura
 * @version 1.0, 2020-01
 */
@TestInstance(Lifecycle.PER_CLASS)
@Execution(ExecutionMode.CONCURRENT)
@TestMethodOrder(MethodOrderer.MethodName.class)
public abstract class AJyotisaTest {
    protected static final ThreadLocal<ISwissEph> SWEPH_EXPS = new ThreadLocal<>();

    /**
     * Place : London, UK
     * Longitude in DMS format: 0 W 7 0
     * Latitude in DMS format: 51 N 30 0
     */
    public static final ISweGeoLocation GEO_LONDON = new SweGeoLocation(-0.1166667, 51.5000000, 11);

    private static ISwissEph newSwephExp() {
        return new SwephNative(EPHE_PATH);
    }

    public static ISwissEph getSwephExp() {
        ISwissEph swissEph = SWEPH_EXPS.get();

        if (null == swissEph) {
            swissEph = newSwephExp();
            SWEPH_EXPS.set(swissEph);
        }

        return swissEph;
    }

    public static void closeSwephExp() {
        try (ISwissEph swissEph = SWEPH_EXPS.get()) {
            if (null == swissEph) return;
            SWEPH_EXPS.remove();
        }
    }

    @AfterEach
    protected void callAfterEach() {
        closeSwephExp();
    }

    protected Document sweEnumProps(ISweEnum sweEnum) {
        Document document = new Document();
        document.append("id", sweEnum.uid());
        document.append("fid", sweEnum.fid());
        document.append("code", sweEnum.code());
        document.append("name", sweEnum.name());
        return document;
    }

    protected Document kundaliEnumProps(IKundaliEnum kundaliEnum) {
        Document document = sweEnumProps(kundaliEnum);
        return document;
    }
}
