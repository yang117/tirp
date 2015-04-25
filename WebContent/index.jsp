<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="entity.*,dao.*;"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	PostDao mDao = new PostDao();
	LikesDao lDao = new LikesDao();
	List<PostModel> mlist = mDao.getMList();
	List<PostModel> mlist2 = mDao.getPostList();
	
	User loginedUsers = new User();
	if (session.getAttribute("LOGINED_USER") != null) {
		loginedUsers = (User) session.getAttribute("LOGINED_USER");
		if (loginedUsers.getUserName() == null
				|| "".equals(loginedUsers.getUserName())) {
			request.getRequestDispatcher("error.jsp").forward(request,
					response);
			return;
		}
	} else {
		request.getRequestDispatcher("fail.jsp").forward(request,
				response);
		return;
	}
	List<Likes> llist = lDao.getLList(loginedUsers);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh" class="" data-ad-zone="anonymoushome:anonymoushome:overview">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
		<title>trip-index.jsp</title>
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
                <h1 class="anon-brand">Go2Trip-Find Best Scenery</h1>
            </header>
            <div class="intro-copy">
                	We provide travel service.
            </div>

     
        </div>
      
    </section>
			<section>
	
				<%
					for (int i = 0; i < mlist.size(); i++) {
						PostModel m = mlist.get(i);
				%>
			<div class="page-head  with-crumbtrail  with-image  clearit ">
	            <div class="crumb-wrapper">
	            <div class="top-crumb">
	                <a href="details.jsp?&id=<%=m.getId()%>"> <img class="crumb-image" src="images/img.jpg" alt="Id 缩略图" width="60" height="60"> <%=m.getTitle()%></a>          
	            </div>
	             <h1> <span itemprop="name"><%=m.getIntorduction() %></span></h1>
	        	</div>
    
			    <nav class="secondary-nav" role="navigation" data-require="secondarynav">
			        <ul class="visible-menu">
			            <li class=" current  first "><a href="/music/Id/+tracks"> <%=m.getAddTime().substring(0,16) %></a></li> </ul>    
			    </nav>
  		    </div>
  		    <%
					}
			%>
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
		</div>
	</body>
</html>