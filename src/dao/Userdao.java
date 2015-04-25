package dao;

import entity.*;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.xml.namespace.QName;

import org.apache.axis2.AxisFault;
import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.rpc.client.RPCServiceClient;

public class Userdao extends BeasDao {

	LikesDao ldao=new LikesDao();
	ReviewDao rDao=new ReviewDao();
	public User findUser(String uname, String upass) {
		User user = null;
		conn = this.getConn();
		String sql = "select * from tb_user where t_userName=? and t_password=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uname);
			pstmt.setString(2, upass);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new User((int) rs.getInt(1), (String) rs.getString(2),
						(String) rs.getString(3));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}

		return user;
	}

	public int AddUser(User user) {
		SimpleDateFormat HMFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Random ran = new Random();
		int id = ran.nextInt(9999);
		String sql = "insert into tb_user values (?,?,?,?,?,?,?,?)";
		String[] parm = { id + "", user.getUserName(), user.getPassword(),
				user.getEmail(), 1 + "",user.getProfile(),user.getPhone(),HMFormat.format(new Date())};
		return this.executeSQL(sql, parm);
	}

	public int getNewId() {
		int id = 0;
		conn = this.getConn();
		String sql = "select max(id) from FirstLeveTitle";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				id = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return id + 1;
	}

	public List<User> GetUserList() {
		List<User> list = new ArrayList<User>();
		conn = this.getConn();
		String sql = "select * from tb_user ";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				User uList = new User();
				uList.setId(Integer.parseInt(rs.getString("t_id")));
				uList.setUserName(rs.getString("t_userName"));
				uList.setEmail(rs.getString("t_email"));
				uList.setPhone(rs.getString("phone"));
				uList.setProfile(rs.getString("profile"));
				uList.setJoinDate(rs.getString("JoinDate"));
				list.add(uList);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}

	public User getUser(int id) {
		User user = null;
		conn = this.getConn();
		String sql = "select * from tb_user where t_id=?  ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(Integer.parseInt(rs.getString("t_id")));
				user.setUserName(rs.getString("t_userName"));
				user.setEmail(rs.getString("t_email"));
				user.setPhone(rs.getString("phone"));
				user.setProfile(rs.getString("profile"));
				user.setJoinDate(rs.getString("JoinDate"));
	
			}
			user.setLikesList(ldao.getLikesList(user));
			user.setReviewList(rDao.getRevListByUID(user.getId()));
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}

		return user;
	}

	public int delect(String id) {
		int count = 0;
		int lid = Integer.parseInt(id);
		conn = this.getConn();
		String sql = "delete from tb_user where t_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lid + "");
			count = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return count;
	}
	
	 public static void main(String[] args) throws AxisFault {  
	        // TODO Auto-generated method stub  
	  
	        // 使用RPC方式调用WebService  
	        RPCServiceClient serviceClient = new RPCServiceClient();  
	        Options options = serviceClient.getOptions();  
	        // 指定调用WebService的URL  
	        EndpointReference targetEPR = new EndpointReference(  
	                "http://localhost:8080/WebService/user/userInfo");  
	        options.setTo(targetEPR);  
	  
	        // 指定要调用的计算机器中的方法及WSDL文件的命名空间：edu.sjtu.webservice。  
	        QName opAddEntry = new QName("http://WebService/user/userInfo","editUser");//加法  
	        Object[] opAddEntryArgs = new Object[] { 1,2 };  
	        // 指定plus方法返回值的数据类型的Class对象  
	        Class[] classes = new Class[] { float.class };  
	        // 调用plus方法并输出该方法的返回值  
	        System.out.println(serviceClient.invokeBlocking(opAddEntry,opAddEntryArgs, classes)[0]);   
	  
	    }  
}
