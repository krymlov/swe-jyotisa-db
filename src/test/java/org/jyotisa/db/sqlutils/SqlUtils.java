package org.jyotisa.db.sqlutils;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * https://dev.mysql.com/doc/refman/5.6/en/optimizing-innodb-bulk-data-loading.html
 */
public class SqlUtils {
    public static final ThreadLocal<Connection> MYSQL_CONNECTIONS = new ThreadLocal<>();

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Map<String, Object> findById(String tableName, Integer id) throws SQLException {
        return new QueryRunner().query(getMySqlConnection(), "SELECT * FROM "
                + tableName + " WHERE id = " + id, new MapHandler());
    }

    public static List<Map<String, Object>> findAll(String tableName) throws SQLException {
        return new QueryRunner().query(getMySqlConnection(), "SELECT * FROM "
                + tableName, new MapListHandler());
    }

    public static List<Object[]> insertBatch(String sql, Object[][] params) throws SQLException {
        return new QueryRunner().insertBatch(getMySqlConnection(), sql, new ArrayListHandler(), params);
    }

    public static Connection getMySqlConnection() throws SQLException {
        Connection connection = MYSQL_CONNECTIONS.get();
        if (null != connection) return connection;
        String url = "jdbc:mysql://localhost:3306/jyotisa?serverTimezone=UTC" +
                "&characterEncoding=UTF-8&rewriteBatchedStatements=true";
        connection = DriverManager.getConnection(url, "jyotisa", "");
        MYSQL_CONNECTIONS.set(connection);
        return connection;
    }

    public static void closeMySqlConnection() throws SQLException {
        final Connection connection = getMySqlConnection();
        if (null != connection && !connection.isClosed()) {
            DbUtils.closeQuietly(connection);
        }
        MYSQL_CONNECTIONS.set(null);
    }
}
