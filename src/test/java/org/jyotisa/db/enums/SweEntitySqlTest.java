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
import org.jyotisa.db.AJyotisaTest;
import org.swisseph.api.ISweEnum;
import org.swisseph.app.SweAyanamsa;
import org.swisseph.app.SweGender;
import org.swisseph.app.SweHouseSystem;

import java.util.Arrays;
import java.util.Comparator;

/**
 * @author Yura
 * @version 1.0, 2020-02
 */
@Execution(ExecutionMode.SAME_THREAD)
public class SweEntitySqlTest extends AJyotisaTest {

    protected StringBuilder createInsertStmt(ISweEnum[] values, String table) {
        String strPatterns = "INSERT INTO ${table} VALUES (${id},${fid},'${code}','${name}');";
        StringBuilder builder = new StringBuilder(1024);

        Arrays.sort(values, Comparator.comparingInt(ISweEnum::fid));

        for (ISweEnum value : values) {
            Document document = sweEnumProps(value).append("table", table);
            StringSubstitutor substr = new StringSubstitutor(document);
            String statement = substr.replace(strPatterns);
            builder.append(statement).append('\n');
        }

        System.out.println(builder);
        return builder;
    }

    @Test
    void testAyanamsa() {
        createInsertStmt(SweAyanamsa.values(), "ayanamsa");
    }

    @Test
    void testHouseSystem() {
        createInsertStmt(SweHouseSystem.values(), "housesys");
    }

    @Test
    void testGender() {
        createInsertStmt(SweGender.values(), "gender");
    }
}
