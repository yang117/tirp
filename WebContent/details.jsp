<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="entity.*,dao.*;"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
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
	
	String id =request.getParameter("id");
	PostDao mDao = new PostDao();
	PostModel post = mDao.getPost(id);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh" class=""
	data-ad-zone="anonymoushome:anonymoushome:overview">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
		<title>post-index.jsp</title>
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
			<article class="content artist-overview">

			<h1 itemprop="name">
				Intorduction
			</h1>
			<div class="r artist-header">
				<section class="g8 artist-images">
				<div class="widget widget-post/heroimage">
					<div class="resource-images">
						<%=post.getIntorduction() %>

					</div>
				</div>
				</section>
				<section class="g4 artist-actions remove-bottom-margin">
				<div class="r r--reverse">
					<div class="g4 artist-action-area">
			

						<div class=" user-actions with-station-button" >

							<div class="user-actions-btn-wrap user-actions-btn-wrap--add">
								<a href="doDel.jsp?&id=<%=id%>&type=addlikes">
									<button class="btn btn--icon-only  btn--primary  iconleft iconleft--add  js-add"
										title="收藏帖子" value="Add like post">
										收藏帖子
									</button> </a>
							</div>

							<div class="user-actions-btn-wrap user-actions--play">
								<a class="stationbutton btn iconleft iconleft--play btn--primary" href="">Tourism information</a>
							</div>

						</div>
					</div>
					<div class="g4 artist-stats-area">
						<div class="media media--overflow-visible post-resource-stats">
							<meta itemprop="interactionCount" content="UserPlays:42595378">
							<ul class="media-body">
								<li class="scrobbles">
									<b>Author：</b><%=post.getTitle() %>
								</li>
								
								<li class="scrobbles">
									<b>Postion：</b><%=post.getPosition()  %>
								</li>
								<li class="listeners">
									<b id="listenerCount">Publish Date：</b><%=post.getAddTime() %>
								</li>
							</ul>
						</div>
					</div>
				</div>
				</section>
			</div>
			<div class="catalogue-social r r--full-bleed">
				<section class="g8 artist-shouts">
				<a name="shoutbox"></a>
				<div class="deferred widget widget-lazy/shoutbox">
					<h2 class="heading">
						<span class="h2Wrapper">  Comment  </span>
					</h2>
					<div class="shoutboxContainer artist-shoutbox">
						

					   <div class="memo" style="width:910px;">
					   	
						<form action="doDel.jsp?&mid=<%=id %>&mName=<%=post.getTitle() %>&sName=<%=post.getIntorduction() %>&uid=<%=loginedUsers.getId() %>&postId=<%=post.getId() %>&type=addReview" method="post" name="myform" onSubmit="check()">
							<textarea rows="7" cols="120" name="review" id="review"></textarea>
							
							<input align="bottom"  type="submit" value="Post" name="login">
						</form>
						</div>
						<ul class="shouts" style="width:910px;">
						<% 
						ReviewDao revDao=new ReviewDao();
						List<Review> rList= revDao.getRevList(id);
						for(int i =0;i<rList.size();i++){
							Review r=rList.get(i);
						
						 %>
							<li class="clearit message">
								<h3 class="author ">
									<a href="user/WOJCIECH1996"> <span class="userImage">
								   <img src="<%=path %>/images/97289583.png" class="avatar " width="64"> </span>
								    <%=r.getUser() %> </a>


								</h3>
								<p>
									 <%=r.getMessage() %> 
								</p>
								<div class="meta">
									<span class="date"><%=r.getTime() %> </span>
									<a class="shoutbox-reply" href="/user/WOJCIECH1996#shoutbox">回复</a>
								</div>
							</li>
							<%} %>
							<span class="moduleOptions"> All <%=rList.size() %> review </span>
						</ul>
					</div>
				</div>
				</section>

			</div>



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
			</footer>
	</body>
</html>