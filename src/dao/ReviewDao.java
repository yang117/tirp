package dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import entity.Likes;
import entity.PostModel;
import entity.Review;
import entity.User;




public class ReviewDao extends BeasDao {
	/**
	 * 发表评论
	 * @param 
	 * @return
	 */
	public int AddReview(Review review){
		Random ran=new Random();
		int id=ran.nextInt(9999);
		SimpleDateFormat HMFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String sql="insert into tb_review values (?,?,?,?,?,?,?,?,?,?)";
		String []parm={id+"",review.getMessage(),review.getUser(),HMFormat.format(new Date()),1+"",1+"",review.getUid()+"",review.getMid()+"",review.getTitle(),review.getIntorduction()};
		return this.executeSQL(sql, parm);
	}
	
	/**
	 * 
	 * 获取评论列表
	 * @return
	 */
	public List<Review> getRevList(String id){
		int mid=Integer.parseInt(id);
		conn=this.getConn();
		String sql="select * from tb_review where mid="+mid+" order by t_time desc";
		List<Review> list=new ArrayList<Review>();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Review mList=new Review();
				mList.setId(Integer.parseInt(rs.getString("t_id")));
				mList.setUser(rs.getString("t_user"));
				mList.setTitle(rs.getString("title"));
				mList.setIntorduction(rs.getString("intorduction"));
				mList.setMessage(rs.getString("t_message"));
				mList.setTime(rs.getString("t_time"));
				list.add(mList);
				
			}
			int a=list.size();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	/**
	 * 通过ID删除
	 * @param id
	 * @return
	 */
	public int delect(String id){
		int count=0;
		int lid=Integer.parseInt(id);
		conn=this.getConn();
		String sql="delete from tb_likes where id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,lid+"");
			count=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return count;
	}
	
	public List<Review> getRevListByUID(int id){
		conn=this.getConn();
		String sql="select * from tb_review where uid="+id+" order by t_time desc";
		List<Review> list=new ArrayList<Review>();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Review mList=new Review();
				mList.setId(Integer.parseInt(rs.getString("t_id")));
				mList.setUser(rs.getString("t_user"));
				mList.setTitle(rs.getString("title"));
				mList.setIntorduction(rs.getString("intorduction"));
				mList.setMessage(rs.getString("t_message"));
				mList.setTime(rs.getString("t_time"));
				list.add(mList);
				
			}
			int a=list.size();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}
}
