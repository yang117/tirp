package entity;

import java.util.Set;

public class PostModel {
	private int id;
	private String title;//����
	private String addTime;//���ʱ��
	private int count;//
	private String image;//ͼƬ���·��
	private String rember;//��ע
	private String info;//�����Ϣ
	private String intorduction;//����
	private String position;//����λ��
	
	
	public PostModel() {
		super();
	}
	public PostModel(int id, String title, String addTime, int count,
			String image, String rember, String info, String type,
			String intorduction,String position) {
		super();
		this.id = id;
		this.title = title;
		this.addTime = addTime;
		this.count = count;
		this.image = image;
		this.rember = rember;
		this.info = info;
		this.intorduction = intorduction;
		this.position = position;
	}
	/**
	 * @return the position
	 */
	public String getPosition() {
		return position;
	}
	/**
	 * @param position the position to set
	 */
	public void setPosition(String position) {
		this.position = position;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	
	
}
