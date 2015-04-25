<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="dao.*"%>
<%@page import="entity.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
			String id = request.getParameter("id");
			String type = request.getParameter("type");

		Admin loginedUsers=new Admin();
  		if(session.getAttribute("LOGINED_ADMIN")!=null){
  			loginedUsers=(Admin)session.getAttribute("LOGINED_ADMIN");
  			if(loginedUsers.getAdminName()==null||"".equals(loginedUsers.getApassword())){
  				request.getRequestDispatcher("error.jsp").forward(request,response);
  				return;
  			}
  		}else{
  			request.getRequestDispatcher("fail.jsp").forward(request,response);
  			return;
  		}
  		
		if (type.equals("delPost") || type == "delPost") {
			PostDao ftdb = new PostDao();
			int result = ftdb.delect(id);
			if (result > 0) {
				request.getRequestDispatcher("pList.jsp").forward(request,
						response);
				return;
			} else {
				request.getRequestDispatcher("error.jsp").forward(request,
						response);
			}
		}
		if (type.equals("doEdit") || type == "doEdit") {
			String title = request.getParameter("title");
			String intorduction = request.getParameter("intorduction");
			String position = request.getParameter("position");
			PostModel mus = new PostModel();
			mus.setId(Integer.parseInt(id));
			mus.setTitle(title);
			mus.setIntorduction(intorduction);
			mus.setPosition(position);

			PostDao aDao = new PostDao();
			int result = aDao.UpdatePost(mus);
			if (result > 0) {

				request.getRequestDispatcher("pList.jsp").forward(request,
						response);
				return;
			} else {
				request.getRequestDispatcher("error.jsp").forward(request,
						response);
			}
		}
		if (type.equals("doAdd") || type == "doAdd") {
			String title = request.getParameter("title");
			String intorduction = request.getParameter("intorduction");
			String position = request.getParameter("position");
			PostModel mus=new PostModel();
			mus.setTitle(title);
			mus.setIntorduction(intorduction);
			mus.setPosition(position);
			
			PostDao aDao = new PostDao();
			int result = aDao.AddPost(mus);
			if(result>0){
				request.getRequestDispatcher("pList.jsp").forward(request,response);
			}else{
				request.getRequestDispatcher("error.jsp").forward(request,response);
			}
		}

		if (type.equals("delUser") || type == "delUser") {
			Userdao ftdb = new Userdao();
			int result = ftdb.delect(id);
			if (result > 0) {
				request.getRequestDispatcher("userList.jsp").forward(request,
						response);
				return;
			} else {
				request.getRequestDispatcher("error.jsp").forward(request,
						response);
			}
		}
	%>


</body>
</html>
