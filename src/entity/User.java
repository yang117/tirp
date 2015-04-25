package entity;

import java.util.List;

/**
 * @author _arjuna
 *
 */
public class User {
	private int id;
	private String userName;
	private String password;
	private String email;
	private Integer commentCount;
	private String rember;
	private int ucount;
	private String profile;
	private String phone;
	private String joinDate;
	private List<Likes> likesList;
	private List<Review> reviewList;
	
	

	public User() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

	public List<Likes> getLikesList() {
		return likesList;
	}
	public void setLikesList(List<Likes> likesList) {
		this.likesList = likesList;
	}
	public List<Review> getReviewList() {
		return reviewList;
	}
	public void setReviewList(List<Review> reviewList) {
		this.reviewList = reviewList;
	}
	public Integer getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(Integer commentCount) {
		this.commentCount = commentCount;
	}
	public String getRember() {
		return rember;
	}
	public void setRember(String rember) {
		this.rember = rember;
	}
	public int getUcount() {
		return ucount;
	}
	public void setUcount(int ucount) {
		this.ucount = ucount;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public User(int id,String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
		
		this.id=id;
	}
	
}
