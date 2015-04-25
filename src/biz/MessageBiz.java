package biz;

import java.util.List;

import dao.Messagedao;
import entity.Message;

public class MessageBiz {
	Messagedao messagedao=new Messagedao();
	public int save(Message message){
		return messagedao.save(message);
	}
	public Message findMessage(int id){
		return messagedao.findMessage(id);
	}
	public List<Message> ListByReceiveUname(String uname) {
		return messagedao.ListByReceiveUname(uname);
	}

}
