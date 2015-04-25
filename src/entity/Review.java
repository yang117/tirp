package entity;

public class Review {//ÆÀÂÛ
	private int id;
	private String message;
	private String user;
	private String title;
	private int mid;
	private String intorduction;
	private int uid;
	private String time;
	private String isMember;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getIsMember() {
		return isMember;
	}
	public void setIsMember(String isMember) {
		this.isMember = isMember;
	}
	public Review(int id, String message, String user, String name, int mid,
			String intorduction, int uid, String time, String isMember) {
		super();
		this.id = id;
		this.message = message;
		this.user = user;
		title = name;
		this.mid = mid;
		this.intorduction = intorduction;
		this.uid = uid;
		this.time = time;
		this.isMember = isMember;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the intorduction
	 */
	public String getIntorduction() {
		return intorduction;
	}
	/**
	 * @param intorduction the intorduction to set
	 */
	public void setIntorduction(String intorduction) {
		this.intorduction = intorduction;
	}
	public Review() {
		super();
	}
	
}
