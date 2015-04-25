package dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Message;

public class Messagedao extends BeasDao {
	public int save(Message message){
		int count=0;
		conn=this.getConn();
		String sql="insert into tb1_message values(?,?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, message.getNote());
			pstmt.setString(2, message.getSendUname());
			pstmt.setString(3, message.getReceiveUname());
			pstmt.setString(4, message.getPostTime());
			pstmt.setString(5, message.getReadSign());
			count=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return count;
	}
	public int delect(String id){
		int mid=Integer.parseInt(id);
		int count=0;
		conn=this.getConn();
		String sql="delete from tb_review where t_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,mid);
			count=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return count;
	}
	public Message findMessage(int id){
		Message mess=new Message();
		conn=this.getConn();
		String sql="select * from tb1_message where id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			while(rs.next()){
				mess.setId(rs.getInt("id"));
				mess.setNote(rs.getString("note"));
				mess.setPostTime(rs.getString("postTime"));
				mess.setReceiveUname(rs.getString("receiveUname"));
				mess.setSendUname(rs.getString("sendUname"));
				mess.setReadSign(rs.getString("readSign"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return mess;
	}
	public List<Message> ListByReceiveUname(String uname) {
		List<Message> all=new ArrayList<Message>();
		String sql="select * from TBL_MESSAGE where receiveUname=?";
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, uname);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Message mess=new Message();
				mess.setId(rs.getInt("id"));
				mess.setNote(rs.getString("note"));
				mess.setPostTime(rs.getString("postTime"));
				mess.setReadSign(rs.getString("readSign"));
				mess.setReceiveUname(rs.getString("receiveUname"));
				mess.setSendUname(rs.getString("sendUname"));
				all.add(mess);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return all;
	}

}
