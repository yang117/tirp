package biz;

import dao.Userdao;
import entity.User;

public class UserBiz {
	Userdao usersdao=new Userdao();
	public User findUser(String name,String pass){
		return usersdao.findUser(name, pass);
	}
}
