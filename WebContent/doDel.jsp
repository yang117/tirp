<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="entity.*,dao.*;"%>
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
  	   User loginedUsers=new User();
  		if(session.getAttribute("LOGINED_USER")!=null){
  			loginedUsers=(User)session.getAttribute("LOGINED_USER");
  		}else{
  			request.getRequestDispatcher("error.jsp").forward(request,response);
  		}
  		
   	request.setCharacterEncoding("GBK");
   	String id=request.getParameter("id");
   	String type=request.getParameter("type");
   	//评论
   	if(type.equals("1")||type=="1"){
   		Messagedao mesDao = new Messagedao();
	  	int result=mesDao.delect(id);
		if(result>0){
			request.getRequestDispatcher("profile.jsp").forward(request,response);
		}else{
			request.getRequestDispatcher("error.jsp").forward(request,response);
		}
   	}
   	//收藏list
  	if(type.equals("2")||type=="2"){
   		LikesDao ftdb = new LikesDao();
	  	int result=ftdb.delect(id);
		if(result>0){
			request.getRequestDispatcher("profile.jsp").forward(request,response);
		}else{
			request.getRequestDispatcher("error.jsp").forward(request,response);
		}
   	}
   	//addReview
  	if(type.equals("addReview")||type=="addReview"){
	   	String review=request.getParameter("review");
		String mid=request.getParameter("mid");
		String uid=request.getParameter("uid");
		PostDao mDao=new PostDao();
		PostModel mus=mDao.getPost(mid);
		Review u=new Review();
		u.setUser(loginedUsers.getUserName());
		u.setUid(loginedUsers.getId());
		u.setMessage(review);
		u.setTitle(mus.getTitle());
		u.setIntorduction(mus.getIntorduction());
		u.setMid(Integer.parseInt(mid));
		u.setUid(Integer.parseInt(uid));
		
		//向数据库中插入一行记录
		ReviewDao rDao=new ReviewDao();
		int result=rDao.AddReview(u);
			if(result>0){
				request.getRequestDispatcher("details.jsp?&id="+mid).forward(request,response);
			}else{
				request.getRequestDispatcher("error.jsp").forward(request,response);
			}
   	}
   	
   //addlikes
  	if(type.equals("addlikes")||type=="addlikes"){
	    PostDao postDao=new PostDao();
	  	PostModel m=postDao.getPost(id);
	  	Likes likes=new Likes();
	  	likes.setTitle(m.getTitle());
	  	likes.setImage(m.getImage());
	  	likes.setInfo(m.getInfo());
	  	likes.setIntorduction(m.getIntorduction());
	  	likes.setRember(m.getRember());
	  	likes.setUid(loginedUsers.getId());
	 	likes.setPostId(m.getId());
	  	//向数据库中插入一行记录
	  	LikesDao ftdb=new LikesDao();
	  	int result=ftdb.AddLikes(likes);
	  	if(result>0){
	  		request.getRequestDispatcher("profile.jsp").forward(request,response);
	  	}else{
	  		request.getRequestDispatcher("error.jsp").forward(request,response);
	  	}
   	}
   	
   	   	
   //search
  	if(type.equals("search")||type=="search"){
	  	 	String sw=request.getParameter("q");
           	PostDao mdao=new PostDao();
           	List<PostModel> list=mdao.getPostByName(sw);
           	if(list.size()>0){
           		session.setAttribute("search",list);
           		response.sendRedirect("search.jsp");
           	}else{
           		response.sendRedirect("error.jsp");
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
		   		response.sendRedirect("error.jsp");
		   	}
   	}
   	if(type.equals("delPost")||type=="delPost"){
      	PostDao ftdb = new PostDao();
      	int result=ftdb.delect(id);
    	if(result>0){
    		request.getRequestDispatcher("pList.jsp").forward(request,response);
    		return;
    	}else{
    		request.getRequestDispatcher("error.jsp").forward(request,response);
    	}
   	}
   	if(type.equals("doEdit")||type=="doEdit"){
			String title = request.getParameter("title");
			String intorduction = request.getParameter("intorduction");
			String position = request.getParameter("position");
			PostModel mus=new PostModel();
			mus.setId(Integer.parseInt(id));
			mus.setTitle(title);
			mus.setIntorduction(intorduction);
			mus.setPosition(position);
			
			PostDao aDao = new PostDao();
			int result = aDao.UpdatePost(mus);
			if(result>0){
				
				request.getRequestDispatcher("pList.jsp").forward(request,response);
				return;
			}else{
				request.getRequestDispatcher("error.jsp").forward(request,response);
			}
   	} 
    %>
  </body>
</html>
