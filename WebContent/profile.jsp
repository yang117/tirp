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
	
	Userdao uDao = new Userdao();
	User user = uDao.getUser(loginedUsers.getId());
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh" class=""
	data-ad-zone="anonymoushome:anonymoushome:overview">
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
				Profile
			</h1>
			<div class="r artist-header">
				<section class="g8 artist-images">
				<div class="widget widget-music/heroimage">
					<div class="resource-images">
						<%=user.getProfile() %>

					</div>
				</div>
				</section>
				<section class="g4 artist-actions remove-bottom-margin">
				<div class="r r--reverse">
					<div class="g4 artist-action-area">
						<h2 class="rm">
							userInfo
						</h2>

						<div class=" user-actions with-station-button" >

						

							<div class="user-actions-btn-wrap user-actions--play">
								<a class="stationbutton btn iconleft iconleft--play btn--primary" href="index.jsp">My information</a>
							</div>

						</div>
					</div>
					<div class="g4 artist-stats-area">
						<div class="media media--overflow-visible music-resource-stats">
							<meta itemprop="interactionCount" content="UserPlays:42595378">
							<ul class="media-body">
								<li class="scrobbles">
									<b>Name：</b><%=user.getUserName() %>
								</li>
								
								<li class="scrobbles">
									<b>Email：</b><%=user.getEmail() %>
								</li>
								<li class="listeners">
									<b id="listenerCount">Phone：</b><%=user.getPhone() %>
								</li>
								<li class="scrobbles">
									<b id="listenerCount">Join date：</b><%=user.getJoinDate() %>
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
						<span class="h2Wrapper"> The comments list </span>
					</h2>
					<div class="shoutboxContainer artist-shoutbox">
					<table width="120%">
				<tr>
					
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
					Content
					</strong></th>
					
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
					Review date
					</strong></th>
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
					Operation
					</strong></th>
				</tr>
				<% 
						List<Review> rList=user.getReviewList();
						for(int i =0;i<rList.size();i++){
							Review r=rList.get(i);
						
						 %>
				<tr>
					
					<td width="70%">
					<%
					if(r.getMessage().length()>60){
					 String mes=r.getMessage().substring(0,59);%>
					 <%=mes %> 
					<%}else{ %>
					<%=r.getMessage() %> 
					<%}  %>
					</td>
					<td  width="20%"><%=r.getTime() %> </td>
					<td  width="10%">
					<a href="doDel.jsp?&id=<%=r.getId() %>&type=1">	delete</a>
				
					</td>
				</tr>
				<%
					}
				%>
			</table>
						<ul class="shouts" style="width:910px;">
			
							<span class="moduleOptions"> All <%=rList.size() %> review </span>
						</ul>
					</div>
				</div>
				</section>

			</div>

			<div class="deferred widget widget-lazy/shoutbox">
					<h2 class="heading">
						<span class="h2Wrapper"> The collections list </span>
					</h2>
					<div class="shoutboxContainer artist-shoutbox">
						<table width="100%">
				<tr>
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
					  Title
					</strong></th>
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
					Content
					</strong></th>
					
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
					JoinDate
					</strong></th>
					<th style="font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:italic; padding-bottom:5px;"><strong>
					Operation
					</strong></th>
				</tr>
				<% 
						List<Likes> lList=user.getLikesList();
						for(int i =0;i<lList.size();i++){
							Likes lik=lList.get(i);
						
						 %>
				<tr>
					<td><%=lik.getTitle()%></td>
					<td><%=lik.getIntorduction() %></td>
					<td><%=lik.getAddTime()%></td>
					<td>
					<a href="doDel.jsp?&id=<%=lik.getId() %>&type=2">	delete</a>
					<a href="details.jsp?&id=<%=lik.getPostId() %>" class="media-link-reference">view</a>
					</td>
				</tr>
				<%
					}
				%>
			</table>
			
						<ul class="shouts" style="width:910px;">
	
						  <span class="moduleOptions"> All <%=lList.size() %> review </span>
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
		</div>
		<div id="fb-root"></div>
	</body>
</html>