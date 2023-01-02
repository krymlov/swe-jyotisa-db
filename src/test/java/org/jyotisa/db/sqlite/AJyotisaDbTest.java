/*
* Author    Yura
* Created   2020-02
*/

package org.jyotisa.db.sqlite;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.api.parallel.Execution;
import org.junit.jupiter.api.parallel.ExecutionMode;
import org.jyotisa.db.sqlutils.SqlRunner;

/**
 * @author  Yura
 * @version 1.0, 2020-02
 */
@TestInstance(Lifecycle.PER_CLASS)
@Execution(ExecutionMode.CONCURRENT)
@TestMethodOrder(MethodOrderer.MethodName.class)
public abstract class AJyotisaDbTest {
    protected static final String TARGET = "target";
    protected static final String ETC_DB_SQLITE = "etc/database/sqlite";

    protected static Connection conn;
    
    protected <T> T findById(Class<T> entityClass, String tableName, Integer id) throws SQLException {
        final ResultSetHandler<T> entityHandler = new BeanHandler<T>(entityClass);
        return new QueryRunner().query(conn, "SELECT * FROM " 
            + tableName + " WHERE id = " + id, entityHandler);
    }

    protected <T> List<T> findAll(Class<T> entityClass, String tableName) throws SQLException {
        final ResultSetHandler<List<T>> listHandler = new BeanListHandler<T>(entityClass);
        return new QueryRunner().query(conn, "SELECT * FROM " + tableName, listHandler);
    }
    
    @BeforeAll
    public static void init() throws SQLException, IOException {
        String url = "jdbc:sqlite:" + TARGET + "/jyotisa-test.db";
        conn = DriverManager.getConnection(url);
        
        File dbFile = new File(ETC_DB_SQLITE + "/jyotisa.sql");
        FileReader reader = new FileReader(dbFile);
        
        SqlRunner sqlRunner = new SqlRunner(conn,
            new PrintWriter(TARGET + "/jyotisa-test.out"), 
            new PrintWriter(TARGET + "/jyotisa-test.err"),
            true, true);

        sqlRunner.runScript(reader);
    }
     
    @AfterAll
    public static void done() throws SQLException {
        if ( null != conn && ! conn.isClosed() ) {
            DbUtils.closeQuietly(conn);
            conn = null;
        }
    }
    
    /*
    public void testAyanamsa() throws SQLException, IOException {
        try (DbManTest dbMan = new DbManTest()) {
            if ( dbMan.conn == null ) return;
    
            assertNotNull(dbMan.findId(Ayanamsa.class, "ayanamsa", 255));
    
            List<Ayanamsa> list = dbMan.findAll(Ayanamsa.class, "ayanamsa");
            for (Ayanamsa ayanamsa : list) {
                assertNotNull(ayanamsa);
            }
        }
    }*/
}
