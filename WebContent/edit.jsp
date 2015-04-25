<%@ page language="java" import="java.util.*,entity.*,dao.*"
	pageEncoding="utf-8"%>
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
	PostModel mList=new PostModel();
	PostDao mDao=new PostDao();
	mList=(PostModel)mDao.getPost(id);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh" class=""
	data-ad-zone="anonymoushome:anonymoushome:overview">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
		<title>trip-index.jsp</title>
<link rel="stylesheet" href="css/overview1.css">
		<link rel="stylesheet" href="css/master1.css">
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

				<form class="site-search" action="doEdit.jsp" method="post" name="myform" onSubmit="check()">
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
					User：<%=loginedUsers.getAdminName()%>
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
			<div class="intro-join g3">
				<a href="likes.jsp" class="anon-button">Publish Post</a>
			</div>
			</section>
		<script>var WRInitTime = +new Date();
		alert(WRInitTime);
		</script>
		

		<div id="page" class="">
			<div id="join" class="fixed">
				<div id="content" class="clearit">
					<div class="fullWidth">

						<a href="/" class="ticket-logo ir"> <img src="<%=path %>/images/lastfm_logo@2x.png" height="108" width="127"
								alt="music--song"> </a>

						<div class="content-region">
							<div id="signUp" class="needs-js">
								<h1>
									Editor post
								</h1>
								

								<form action="doEdit.jsp?&id=<%=id %>&type=doEdit" name="myform" method="post" onSubmit="changeForm()" id="signUpForm" class="clearit">
									<fieldset>
										<div class="field field-username">
											<label for="username">
												Title
											</label>
											<input id="title" type="text" name="title" class="input" maxlength="15" autocomplete="off" value="<%=mList.getTitle() %>">
										</div>
										
										<div class="field field-username">
											<label for="username">
												Profile
											</label>
											<textarea rows="7" cols="70" name="intorduction" id="intorduction"><%=mList.getIntorduction() %></textarea>
										
										</div>
									
									

										<div class="field field-email">
											<label for="email">
												Position
											</label>

											<input type="text" name="position" id="position" class="input" autocomplete="off" value="<%=mList.getPosition() %>">
										</div>

									</fieldset>
									<fieldset>
										<button type="submit" name="createprofile" class="submitBtn">
											<span>Submit</span>
										</button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>

	</body>
</html>