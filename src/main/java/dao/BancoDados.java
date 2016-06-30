package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BancoDados {
  public static void main(String[] args) throws SQLException {
    // MySQL
    dbc:mysql://linkconexaobd
    Connection conn = DriverManager.getConnection(url);
    conn.close();
  }
}
