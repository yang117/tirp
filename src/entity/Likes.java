package entity;

import java.util.Set;

public class Likes {
	private int id;
	private String title;
	private String addTime;//���ʱ��
	private int count;
	private String image;//ͼƬ���·��
	private String rember;//��ע
	private String info;//�����Ϣ
	private String intorduction;//����
	private int uid;
	private int postId;
	
	

	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public Likes() {
		super();
	}
	public Likes(int id, String title, String addTime, int count,
			String image, String rember, String info, String type,
			String intorduction,int postId) {
		super();
		this.id = id;
		this.title = title;
		this.addTime = addTime;
		this.count = count;
		this.image = image;
		this.rember = rember;
		this.info = info;
		this.intorduction = intorduction;
		this.postId = postId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddTime() {
		return addTime;
	}
	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getRember() {
		return rember;
	}
	public void setRember(String rember) {
		this.rember = rember;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
	public String getIntorduction() {
		return intorduction;
	}
	public void setIntorduction(String intorduction) {
		this.intorduction = intorduction;
	}
	
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
}
