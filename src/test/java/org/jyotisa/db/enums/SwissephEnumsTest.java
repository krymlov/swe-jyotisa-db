/*
 * Author    Yura
 * Created   2020-02
 */

package org.jyotisa.db.enums;

import org.apache.commons.text.StringSubstitutor;
import org.bson.Document;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.parallel.Execution;
import org.junit.jupiter.api.parallel.ExecutionMode;
import org.jyotisa.db.AbstractTest;
import org.swisseph.api.ISweEnum;
import org.swisseph.app.SweAyanamsa;
import org.swisseph.app.SweGender;
import org.swisseph.app.SweHouseSystem;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

import static java.nio.charset.StandardCharsets.UTF_8;
import static java.util.Comparator.comparingInt;
import static org.apache.commons.io.FileUtils.writeStringToFile;
import static org.swisseph.app.SweAyanamsa.AY_USER;

/**
 * @author Yura
 * @version 1.0, 2020-02
 */
@Execution(ExecutionMode.SAME_THREAD)
public class SwissephEnumsTest extends AbstractTest {

    @BeforeAll
    protected void initSqlFile() throws IOException {
        sqlFile = new File("etc", "enums/enums_swisseph" + ".sql");
        writeStringToFile(sqlFile, "# SWE ENUMS", UTF_8);
    }

    protected void appendInsertStmt(ISweEnum[] values, String table, boolean delete) throws IOException {
        String strPatterns = "INSERT INTO ${table} VALUES (${id},${fid},'${code}','${name}');";
        StringBuilder builder = new StringBuilder(1024);
        Arrays.sort(values, comparingInt(ISweEnum::fid));

        for (ISweEnum value : values) {
            builder.append('\n');
            Document document = enumProps(value).append("table", table);
            StringSubstitutor substr = new StringSubstitutor(document);
            String statement = substr.replace(strPatterns);
            builder.append(statement);
        }

        appendEnumsToSqlFile(table, builder, delete);
    }

    @Test
    void testSweHouseSystem() throws IOException {
        appendInsertStmt(SweHouseSystem.values(), "meta_house_system", true);
    }

    @Test
    void testSweAyanamsa() throws IOException {
        SweAyanamsa[] ayanamsas = SweAyanamsa.values();
        final int ayanamsasLength = ayanamsas.length - 1;

        for (int i = 0; i < AY_USER.fid(); i++) {
            if (i < ayanamsasLength) {
                SweAyanamsa ayanamsa = SweAyanamsa.values()[i];
                appendInsertStmt(new ISweEnum[]{ayanamsa}, "meta_ayanamsa", i == 0);
            } else {
                ISweEnum sweEnum = newSweEnum(i, i, "AY" + i, "AY" + i);
                appendInsertStmt(new ISweEnum[]{sweEnum}, "meta_ayanamsa", false);
            }
        }

        ISweEnum sweEnum = newSweEnum(AY_USER.fid(), AY_USER.fid(), AY_USER.code(), AY_USER.name());
        appendInsertStmt(new ISweEnum[]{sweEnum}, "meta_ayanamsa", false);
    }

    @Test
    void testSweGender() throws IOException {
        appendInsertStmt(SweGender.values(), "meta_gender", true);
    }

    ISweEnum newSweEnum(int fid, int uid, String code, String name) {
        return new ISweEnum() {
            @Override
            public int fid() {return fid;}
            @Override
            public int uid() {return uid;}
            @Override
            public String code() {return code;}
            @Override
            public String name() {return name;}
        };
    }
}
