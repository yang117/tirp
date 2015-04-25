<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="entity.*,dao.*;"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%
	String id = request.getParameter("id");
		User loginedUsers=new User();
  		if(session.getAttribute("LOGINED_USER")!=null){
  			loginedUsers=(User)session.getAttribute("LOGINED_USER");
  			if(loginedUsers.getUserName()==null||"".equals(loginedUsers.getUserName())){
  				request.getRequestDispatcher("error.jsp").forward(request,response);
  				return;
  			}
  		}else{
  			request.getRequestDispatcher("fail.jsp").forward(request,response);
  			return;
  		}
		List<PostModel> mList=new ArrayList<PostModel>();
		if(session.getAttribute("search")!=null){
			mList=(List)session.getAttribute("search");
		}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh" class=""
	data-ad-zone="anonymoushome:anonymoushome:overview">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
		<title>index.jsp</title>
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
						<legend class="rm">
							网站搜索
						</legend>
						<input type="text" name="q" id="q" placeholder="Serch" size="26" class="js-search search-box">

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
						<a href="profile.jsp" class="primary-nav-link">Profile</a>
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
						if (loginedUsers != null && loginedUsers.getUserName() != null) {
					%>
					User：<%=loginedUsers.getUserName()%>
					<%
						} else {
					%>
					<a href="register.jsp" class="join">Register</a>
					<a href="login.jsp" id="login-link"
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
			<div class="intro-join g3">
				<a href="likes.jsp" class="anon-button">Publish Post</a>
			</div>
			</section>
			<section class="">
			
			<h2 class="anon-brand">
			<strong>Search results</strong>
			</h2>
			<table width="100%">
				<tr>
					<td>
						Title
					</td>
					<td>
						Author
					</td>
					<td>
						Date
					</td>
					<td>
						Operation
					</td>
				</tr>
				<%
					for (int i = 0; i < mList.size(); i++) {
						PostModel lik = mList.get(i);
				%>
				<tr>
					<td><%=lik.getTitle() %></td>
					<td><%=lik.getIntorduction() %></td>
					<td><%=lik.getAddTime()%></td>
					<td>
					<a href="doDel.jsp?&id=<%=lik.getId() %>&type=addlikes"> like</a>
					<a href="details.jsp?&id=<%=lik.getId() %>">review</a>
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