<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="biz.UserBiz"%>
<%@page import="entity.User"%>
<%@page import="dao.*"%>
<%@page import="entity.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dologin.jsp' starting page</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
   <%
   	request.setCharacterEncoding("GBK");
	String type=request.getParameter("type");
   	   	//admin
   	  	if(type.equals("doLogin")||type=="doLogin"){
	  	 	String name=request.getParameter("uName");
		   	String pass=request.getParameter("uPass");
		   	UserBiz userBiz=new UserBiz();
		   	User user=userBiz.findUser(name,pass);
		   	if(user!=null){
		   		session.setAttribute("LOGINED_USER",user);
		   		response.sendRedirect("index.jsp");
		   	}else{
		   		response.sendRedirect("login.jsp");
  		 	}
   		}	
   	   	//admin
   	  	if(type.equals("doAdmin")||type=="doAdmin"){
	  	 	String name=request.getParameter("uName");
		   	String pass=request.getParameter("uPass");
		   	AdminDao aDao=new AdminDao();
		   	Admin admin=aDao.findAdmin(name,pass);
		   	if(admin!=null){
		   		session.setAttribute("LOGINED_ADMIN",admin);
		   		response.sendRedirect("pList.jsp");
		   	}else{
		   		response.sendRedirect("admin.jsp");
		   	}
   	}
   			if (type.equals("saveUser") || type == "saveUser") {
				String name=request.getParameter("username");
				String pass=request.getParameter("pword");
				String emil=request.getParameter("email");
				String phone= request.getParameter("phone");
				String profile=request.getParameter("profile");
				User u=new User();
				u.setUserName(name);
				u.setPassword(pass);
				u.setEmail(emil);
				u.setPhone(phone);
				u.setProfile (profile);
				//向数据库中插入一行记录
				Userdao ftdb=new Userdao();
				int result=ftdb.AddUser(u);
				if(result>0){
					request.getRequestDispatcher("login.jsp").forward(request,response);
				}else{
					request.getRequestDispatcher("error.jsp").forward(request,response);
				}
		}
    %>
  </body>
</html>
