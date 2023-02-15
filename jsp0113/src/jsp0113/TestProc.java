package jsp0113;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public class TestProc {

	public static void main(String[] args) {
		try {
			//데이터 베이스 드라이버를 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// Connection 객체 생성
			Connection con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe","SCOTT", "tiger");
			//프로시저를 실행할 수 있는 Statement 객체 생성
			CallableStatement cstmt = con.prepareCall("{call myproc(?)}");
			// ?에 값 바인딩
			cstmt.setString(1, "아무 말");
			//프로시저 실행
			cstmt.executeQuery();
			System.out.println("완료");
			
			//사용 다한 객체 닫기
			cstmt.close();
			con.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
				
	}

}
