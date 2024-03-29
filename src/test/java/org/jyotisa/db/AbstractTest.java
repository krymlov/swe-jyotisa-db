/*
 * Author    Yura
 * Created   2020-01
 */

package org.jyotisa.db;

import org.bson.Document;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.parallel.Execution;
import org.junit.jupiter.api.parallel.ExecutionMode;
import org.swisseph.ISwissEph;
import org.swisseph.SwephNative;
import org.swisseph.api.ISweEnum;
import org.swisseph.api.ISweGeoLocation;
import org.swisseph.app.SweGeoLocation;

import java.io.File;
import java.io.IOException;

import static java.nio.charset.StandardCharsets.UTF_8;
import static org.apache.commons.io.FileUtils.writeStringToFile;
import static org.swisseph.api.ISweConstants.EPHE_PATH;

/**
 * @author Yura
 * @version 1.0, 2020-01
 */
@TestInstance(Lifecycle.PER_CLASS)
@Execution(ExecutionMode.CONCURRENT)
@TestMethodOrder(MethodOrderer.MethodName.class)
public abstract class AbstractTest {
    protected static final ThreadLocal<ISwissEph> SWEPH_EXPS = new ThreadLocal<>();

    protected File sqlFile;

    @AfterAll
    protected void callAfterAll() {
        closeSwephExp();
    }

    /**
     * Place : London, UK
     * Longitude in DMS format: 0 W 7 0
     * Latitude in DMS format: 51 N 30 0
     */
    public static final ISweGeoLocation GEO_LONDON = new SweGeoLocation(-0.1166667, 51.5000000, 11);

    /**
     * Place : Kyiv, Ukraine<br>
     * Longitude in DMS format: 30°31'E
     * Latitude in DMS format: 50°27'N
     */
    public static final ISweGeoLocation GEO_KYIV = new SweGeoLocation(30 + (31 / 60.), 50 + (27 / 60.), 180);

    public static ISwissEph getSwephExp() {
        ISwissEph swissEph = SWEPH_EXPS.get();

        if (null == swissEph) {
            swissEph = newSwephExp();
            SWEPH_EXPS.set(swissEph);
        }

        return swissEph;
    }

    private static ISwissEph newSwephExp() {
        return new SwephNative(EPHE_PATH);
    }

    public static void closeSwephExp() {
        try (ISwissEph swissEph = SWEPH_EXPS.get()) {
            if (null == swissEph) return;
            SWEPH_EXPS.remove();
        }
    }

    protected Document enumProps(ISweEnum sweEnum) {
        Document document = new Document();
        document.append("id", sweEnum.uid());
        document.append("fid", sweEnum.fid());
        document.append("code", sweEnum.code());
        document.append("name", sweEnum.name());
        return document;
    }

    protected void appendEnumsToSqlFile(String table, StringBuilder data, boolean delete) throws IOException {
        if (delete) writeStringToFile(sqlFile, "\n\nDELETE FROM " + table + ";", UTF_8, true);
        writeStringToFile(sqlFile, data.toString(), UTF_8, true);
    }
}
