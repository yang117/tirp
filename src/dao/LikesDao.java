package dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import entity.Likes;
import entity.PostModel;
import entity.User;

public class LikesDao extends BeasDao {
	/**
	 * 收藏喜欢的帖子
	 * 
	 * @param likes
	 * @return
	 */
	public int AddLikes(Likes likes) {
		SimpleDateFormat HMFormat = new SimpleDateFormat("yyyy-MM-dd");
		Random ran=new Random();
		int id=ran.nextInt(9999);
		String sql = "insert into tb_likes values (?,?,?,?,?,?,?,?,?)";
		String[] parm = {id+"", likes.getTitle(), HMFormat.format(new Date()), 1 + "", "images/artist_icon.png", "",  likes.getIntorduction(), likes.getUid() + "",likes.getPostId()+"" };
		return this.executeSQL(sql, parm);
	}

	/**
	 * 通过条件查询获得LIkes
	 * 
	 * @param likes
	 * @return
	 */
	public Likes getLikesByl(Likes likes) {

		conn = this.getConn();
		String sql = "select * from tb_likes where uid=" + likes.getUid()
				+ " and mName='" + likes.getTitle()+ "'order by  addTime desc";
		Likes mList = new Likes();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mList.setId(Integer.parseInt(rs.getString("id")));
				mList.setUid(Integer.parseInt(rs.getString("uid")));
				mList.setTitle(rs.getString("title"));
				mList.setAddTime(rs.getString("addTime"));
				mList.setImage(rs.getString("image"));
				mList.setIntorduction(rs.getString("intorduction"));
				mList.setRember(rs.getString("rember"));
				mList.setCount(Integer.parseInt(rs.getString("count")));
				mList.setPostId(Integer.parseInt(rs.getString("postId")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return mList;
	}

	/**
	 * 
	 * 获取喜欢post的全部列表
	 * 
	 * @return
	 */
	public List<Likes> getLikesList(User user) {

		conn = this.getConn();
		String sql = "select * from tb_likes where uid='"+user.getId()+"'";
		List<Likes> list = new ArrayList<Likes>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Likes mList = new Likes();
				mList.setId(Integer.parseInt(rs.getString("id")));
				mList.setUid(Integer.parseInt(rs.getString("uid")));
				mList.setTitle(rs.getString("title"));
				mList.setAddTime(rs.getString("addTime"));
				mList.setImage(rs.getString("image"));;
				mList.setIntorduction(rs.getString("intorduction"));
				mList.setRember(rs.getString("rember"));
				mList.setCount(Integer.parseInt(rs.getString("count")));
				mList.setPostId(Integer.parseInt(rs.getString("postId")));
				list.add(mList);

			}
			int a = list.size();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}

	public List<Likes> getLList(User user) {
		int uid=user.getId();
		conn = this.getConn();
		String sql = "select * from tb_likes where uid='"+uid+"' order by id desc   limit 5  ";
		List<Likes> list = new ArrayList<Likes>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Likes mList = new Likes();
				mList.setId(Integer.parseInt(rs.getString("id")));
				mList.setUid(Integer.parseInt(rs.getString("uid")));
				mList.setTitle(rs.getString("title"));
				mList.setAddTime(rs.getString("addTime"));
				mList.setImage(rs.getString("image"));
				mList.setIntorduction(rs.getString("intorduction"));
				mList.setRember(rs.getString("rember"));
				mList.setCount(Integer.parseInt(rs.getString("count")));
				mList.setPostId(Integer.parseInt(rs.getString("postId")));
				list.add(mList);

			}
			int a = list.size();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}

	public List<Likes> getHotList() {

		conn = this.getConn();
		String sql = "select * from tb_likes where order by id desc   limit 5  ";
		List<Likes> list = new ArrayList<Likes>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Likes mList = new Likes();
				mList.setId(Integer.parseInt(rs.getString("id")));
				mList.setUid(Integer.parseInt(rs.getString("uid")));
				mList.setTitle(rs.getString("title"));
				mList.setAddTime(rs.getString("addTime"));
				mList.setImage(rs.getString("image"));
				mList.setIntorduction(rs.getString("intorduction"));
				mList.setRember(rs.getString("rember"));
				mList.setCount(Integer.parseInt(rs.getString("count")));
				mList.setPostId(Integer.parseInt(rs.getString("postId")));
				list.add(mList);

			}
			int a = list.size();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	
	public int getNewId(){
		int id=0;
		conn=this.getConn();
		String sql="select max(id) from tb_likes";
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
	/**
	 * 通过ID删除
	 * 
	 * @param id
	 * @return
	 */
	public int delect(String id) {
		int count = 0;
		int lid = Integer.parseInt(id);
		conn = this.getConn();
		String sql = "delete from tb_likes where id=?";
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
