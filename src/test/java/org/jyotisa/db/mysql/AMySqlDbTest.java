/*
 * Author    Yura
 * Created   2020-01
 */

package org.jyotisa.db.mysql;

import org.junit.jupiter.api.*;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.api.parallel.Execution;
import org.junit.jupiter.api.parallel.ExecutionMode;
import org.jyotisa.db.AbstractTest;
import org.jyotisa.db.sqlutils.SqlUtils;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author Yura
 * @version 1.0, 2020-01
 */
@TestInstance(Lifecycle.PER_CLASS)
@Execution(ExecutionMode.CONCURRENT)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
abstract class AMySqlDbTest extends AbstractTest {

    @BeforeAll
    void testConnection() throws SQLException {
        Connection connection = SqlUtils.getMySqlConnection();
        System.out.println("Test connection... " + connection);
        Assertions.assertNotNull(connection);
        Assertions.assertFalse(connection.isClosed());
        Assertions.assertFalse(connection.isReadOnly());
        SqlUtils.closeMySqlConnection();
        Assertions.assertNull(SqlUtils.MYSQL_CONNECTIONS.get());
    }

    @BeforeEach
    void openConnection() throws SQLException {
        Connection connection = SqlUtils.getMySqlConnection();
        System.out.println("Opened connection... " + connection);
        Assertions.assertNotNull(connection);
        Assertions.assertFalse(connection.isClosed());
        Assertions.assertFalse(connection.isReadOnly());
        connection.setAutoCommit(false);

        // https://dev.mysql.com/doc/refman/5.6/en/optimizing-innodb-bulk-data-loading.html
        Statement statement = connection.createStatement();
        statement.execute("SET autocommit=0;");
        statement.execute("SET unique_checks=0;");
        statement.execute("SET foreign_key_checks=0;");
    }

    @AfterEach
    void closeConnection() throws SQLException {
        Connection connection = SqlUtils.getMySqlConnection();
        Assertions.assertNotNull(connection);
        Assertions.assertFalse(connection.isClosed());
        Assertions.assertFalse(connection.isReadOnly());

        System.out.println("Close connection... " + connection);
        connection.commit();

        Statement statement = connection.createStatement();
        statement.execute("SET foreign_key_checks=1;");
        statement.execute("SET unique_checks=1;");
        statement.execute("SET autocommit=1;");

        SqlUtils.closeMySqlConnection();
    }
}
