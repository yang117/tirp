package entity;

public class Message {
	private int id;          
	private String Note;                                   
	private String SendUname;                                         
	private String receiveUname;                                       
	private String postTime;              
	private String readSign;

	public Message() {
		super();
	}
	public Message(int id, String note, String sendUname, String receiveUname,
			String postTime, String readSign) {
		super();
		this.id = id;
		Note = note;
		SendUname = sendUname;
		this.receiveUname = receiveUname;
		this.postTime = postTime;
		this.readSign = readSign;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNote() {
		return Note;
	}
	public void setNote(String note) {
		Note = note;
	}
	public String getSendUname() {
		return SendUname;
	}
	public void setSendUname(String sendUname) {
		SendUname = sendUname;
	}
	public String getReceiveUname() {
		return receiveUname;
	}
	public void setReceiveUname(String receiveUname) {
		this.receiveUname = receiveUname;
	}
	public String getPostTime() {
		return postTime;
	}
	public void setPostTime(String postTime) {
		this.postTime = postTime;
	}
	public String getReadSign() {
		return readSign;
	}
	public void setReadSign(String readSign) {
		this.readSign = readSign;
	}
}
