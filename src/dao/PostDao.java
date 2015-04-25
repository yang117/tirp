package dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import entity.Likes;
import entity.PostModel;

public class PostDao extends BeasDao {
	
	public List<PostModel> getPostList(){
		List<PostModel> list=new ArrayList<PostModel>();
		conn=this.getConn();
		String sql="select * from tb_post ";
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				PostModel mList=new PostModel();
				mList.setId(Integer.parseInt(rs.getString("id")));
				mList.setTitle(rs.getString("title"));
				mList.setAddTime(rs.getString("addTime"));
				mList.setImage(rs.getString("image"));
				mList.setInfo(rs.getString("info"));
				mList.setIntorduction(rs.getString("intorduction"));
				mList.setRember(rs.getString("rember"));
				mList.setCount(Integer.parseInt(rs.getString("count")) );
				mList.setPosition(rs.getString("position"));
				list.add(mList);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	
	public List<PostModel> getPostByName(String name){
		List<PostModel> list=new ArrayList<PostModel>();
		conn=this.getConn();
		String sql="select * from tb_post where title like '%"+name+"%'";
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				PostModel mList=new PostModel();
				mList.setId(Integer.parseInt(rs.getString("id")));
				mList.setTitle(rs.getString("title"));
				mList.setAddTime(rs.getString("addTime"));
				mList.setImage(rs.getString("image"));
				mList.setInfo(rs.getString("info"));
				mList.setIntorduction(rs.getString("intorduction"));
				mList.setRember(rs.getString("rember"));
				mList.setCount(Integer.parseInt(rs.getString("count")) );
				mList.setPosition(rs.getString("position"));
				list.add(mList);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	
	

		public List<PostModel> getMList(){
			List<PostModel> list=new ArrayList<PostModel>();
			conn=this.getConn();
			String sql="select * from tb_post order by id desc   limit 5   ";
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()){
					PostModel mList=new PostModel();
					mList.setId(Integer.parseInt(rs.getString("id")));
					mList.setTitle(rs.getString("title"));
					mList.setAddTime(rs.getString("addTime"));
					mList.setImage(rs.getString("image"));
					mList.setInfo(rs.getString("info"));
					mList.setIntorduction(rs.getString("intorduction"));
					mList.setRember(rs.getString("rember"));
					mList.setCount(Integer.parseInt(rs.getString("count")) );
					mList.setPosition(rs.getString("position"));
					list.add(mList);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				this.closeAll(conn, pstmt, rs);
			}
			return list;
		}
		
	public PostModel getPost(String id){
		
		conn=this.getConn();
		int mid=Integer.parseInt(id);
		String sql="select * from tb_post where id="+mid;
		PostModel mList=new PostModel();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				
				mList.setId(Integer.parseInt(rs.getString("id")));
				mList.setTitle(rs.getString("title"));
				mList.setAddTime(rs.getString("addTime"));
				mList.setImage(rs.getString("image"));
				mList.setInfo(rs.getString("info"));
				mList.setIntorduction(rs.getString("intorduction"));
				mList.setRember(rs.getString("rember"));
				mList.setCount(Integer.parseInt(rs.getString("count")) );
				mList.setPosition(rs.getString("position"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return mList;
	}
	
	
	public int AddPost(PostModel postModel) {
		SimpleDateFormat HMFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Random ran=new Random();
		int id=ran.nextInt(9999);
		String sql = "insert into tb_post values (?,?,?,?,?,?,?,?,?)";
		String[] parm = {id+"", postModel.getTitle(),
				HMFormat.format(new Date()), 1 + "", "images/img.jpg","","",postModel.getIntorduction(), postModel.getPosition() };
		return this.executeSQL(sql, parm);
	}
	public int UpdatePost(PostModel postModel) {
		String sql = "update tb_post set title=?,intorduction=?,position=? where id="+postModel.getId();
		String[] parm = { postModel.getTitle(),postModel.getIntorduction(),postModel.getPosition() };
		return this.executeSQL(sql, parm);
	}
	public int delect(String id) {
		int count = 0;
		int lid = Integer.parseInt(id);
		conn = this.getConn();
		String sql = "delete from tb_post where id=?";
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
}
