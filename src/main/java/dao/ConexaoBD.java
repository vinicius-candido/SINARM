package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConexaoBD {
	public static void main(String[] args) throws SQLException {
		// MySQL
	    String url = "jdbc:mysql://localhost/banco-de-dados";
	    Connection conexao = DriverManager.getConnection(url);
	}

}
