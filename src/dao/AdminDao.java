package dao;
import entity.*;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;


public class AdminDao extends BeasDao {
	

	public Admin findAdmin(String uname,String upass){
		Admin user=null;
		conn=this.getConn();
		String sql="select * from tb_admin where t_adminName=? and t_password=? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, uname);
			pstmt.setString(2, upass);
			rs=pstmt.executeQuery();
			if(rs.next()){
				user=new Admin((int)rs.getInt(1),(String)rs.getString(2),(String)rs.getString(3));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		
		return user;
	}
	
	public int AddUser(User user){
		SimpleDateFormat HMFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Random ran=new Random();
		int id=ran.nextInt(9999);
		String sql="insert into tb_user values (?,?,?,?,?)";
		String []parm={id+"",user.getUserName(),user.getPassword(),user.getEmail(),1+""};
		return this.executeSQL(sql, parm);
}
	public int getNewId(){
		int id=0;
		conn=this.getConn();
		String sql="select max(id) from FirstLeveTitle";
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()){
				id=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return id+1;
	}
}
