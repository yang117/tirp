<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="entity.*,dao.*;"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String id = request.getParameter("id");
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
	List<User> mList=new ArrayList<User>();
	Userdao uDao=new Userdao();
	mList=(List<User>)uDao.GetUserList();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh" class=""
	data-ad-zone="anonymoushome:anonymoushome:overview">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
		<title>trip-list.jsp</title>
		<style>
html {
	zoom: 1;
}
</style>
		<link rel="stylesheet" href="css/whittle.css">
		<link rel="stylesheet" href="css/master.css">
		<link rel="stylesheet" href="css/overview.css">
	</head>
	<body class="a-overview lang-zh theme-whittle" style="">
		<div class=" page-wrapper">
			<div class="masthead-wrapper">
				<header class="masthead" role="banner">
				<h1>
					<a href="index.jsp" class="ir lastfm-logo"> Tourism </a>
				</h1>

				<form class="site-search" action="doDel.jsp?type=search" method="post" name="myform" onSubmit="check()">
					<fieldset>
						<input type="text" name="q" id="q" placeholder="Serch"
							size="26" class="js-search search-box">

						<input type="hidden" name="from" value="ac">
						<button type="submit" class="search-submit icon iconleft iconleft--light iconleft--search" title="search"></button>
					</fieldset>
					<div class="autocomplete-results-container"></div>
				</form>

				<nav role="navigation">
				<ul class="primary-nav remove-bottom-margin">
					<li class="primary-nav-item">
						<a href="index.jsp" class="primary-nav-link">Home</a>
					</li>
					<li id="listenNav" class="primary-nav-item">
						<a href="likes.jsp" class="primary-nav-link">Profile</a>
					</li>
					<li class="primary-nav-item">
						<a href="admin.jsp" class="primary-nav-link">Admin</a>
					</li>
					<li class="primary-nav-item">
						<a href="register.jsp" class="primary-nav-link">Register</a>
					</li>
				</ul>

				<div class="masthead-right" role="navigation">
					<%
						if (loginedUsers != null && loginedUsers.getAdminName() != null) {
					%>
					Admin：<%=loginedUsers.getAdminName()%>
					<%
						} else {
					%>
					
					<a href="admin.jsp" id="login-link"
						class="btn btn--small btn--header btn--rounded login">Login</a>
					<%
						}
					%>
				</div>
				</nav>
				</header>


			</div>
			<article class="content">

			<section class="r intro">
			<div class="intro-and-search g6">
				<header class="intro-header">
				<h1 class="anon-brand">
					Go2Trip - Find Best Scenery
				</h1>
				</header>
				<div class="intro-copy">
					We provide travel service.
				</div>

			
			</div>
	
		
			</section>
			<section class="">
			
			
			
			<table width="100%">
			<tr><td><h2 class="anon-brand">
			<strong>User list</strong>		
			</h2> </td><td colspan="6" align="right"><a href="pList.jsp" class="anon-button">Post management</a></td></tr>
				<tr>
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
						Name
					</strong></th>
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
						Email
					</strong></th>
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
						Phone
					</strong></th>
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
						Profile
					</strong></th>
						<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
						JoinDate
					</strong></th>
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
						Operation
					</strong></th>
				</tr>
				<%
					for (int i = 0; i < mList.size(); i++) {
						User lik = mList.get(i);
				%>
				<tr>
					<td><%=lik.getUserName() %></td>
					<td><%=lik.getEmail() %></td>
					<td><%=lik.getPhone() %></td>
					<td width="40%"><%=lik.getProfile() %></td>
					<td><%=lik.getJoinDate() %></td>
					<td>
					<a href="doEdit.jsp?&id=<%=lik.getId() %>&type=delUser">Delete</a>
					</td>
				</tr>
				<%
					}
				%>
			</table>
			</section>


		
			</article>


			<footer role="banner" class="site-footer">

			<hr class="separator">



			<div class="site-footer-legalese">
				<blockquote class="site-footer-strapline">
					“Travel to stay away.”
				</blockquote>
				<ul class="inline-items inline-items--dotted">
					<li>
						<a href="">Go2Trip Interactive</a> © 2015
						Go2Trip
					</li>
				</ul>
			</div>
	</body>
</html>