package dao;

import java.sql.*;

public class BeasDao {
	public static final String DRIVER="com.mysql.jdbc.Driver";
	public static final String URL="jdbc:mysql://localhost:3306/db_trip?useUnicode=true&amp;characterEncoding=utf-8";
	public static final String DBNAME="root";
	public static final String DBPASS="root";
	public Connection conn=null;
	public PreparedStatement pstmt=null;
	public ResultSet rs=null;
	
	public  Connection getConn(){
			try {
				Class.forName(DRIVER);   //×¢²áÇý¶¯
				conn=DriverManager.getConnection(URL,DBNAME,DBPASS);
			} catch (ClassNotFoundException e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return conn;
	}	
	public void closeAll(Connection conn,PreparedStatement pstmt,ResultSet rs){
		try {
			if(rs!=null){
				rs.close();
			}
			if(pstmt!=null){
				pstmt.close();
			}
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public int executeSQL(String sql,String[] param){
		int num=0;
		try {
			conn=getConn();
			pstmt=conn.prepareStatement(sql);
			if (param!=null) {
				for (int i = 0; i < param.length; i++) {
					pstmt.setString(i+1, param[i]);
				}
			}
			num=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (Exception e) {
		}finally{
			closeAll(conn, pstmt, null);
		}
		return num;
	}
}
