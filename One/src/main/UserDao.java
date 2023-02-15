package main;

import java.io.FileReader;
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class UserDao {
	
	private static UserDao userdao = new UserDao();
	private UserDao() {}
	public static UserDao getInstance() {
		return userdao;
	}
	
	private Connection conn = getConnect();
	
	private Connection getConnect() {
		try {
			Properties prop = new Properties();
			String path = UserDao.class.getResource("db.properties").getPath();
			path = URLDecoder.decode(path,"utf-8");
			prop.load(new FileReader(path));
			String driver = prop.getProperty("driver");
			String dbURL = prop.getProperty("dbURL");
			String dbID = prop.getProperty("dbID");
			String dbPW = prop.getProperty("dbPW");
			Class.forName(driver);
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("연결 실패");
		}
		return null;
	}	
	
// ----------------------------------------------------------------------------------
	
	
	public int Logindb(String id, String pw) {
		String sql = "select pw from user where id=?";
		try {
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			ResultSet rs = psmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(pw)) {
					return 1;
				} else {
					return 0;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	
	
	
	
	
} //class





























