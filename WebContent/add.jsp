<%@ page language="java" import="java.util.*,entity.*,dao.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<link rel="stylesheet" href="css/overview1.css">
		<link rel="stylesheet" href="css/master1.css">

			<script src="admin.js"></script>
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
						<button type="submit"
							class="search-submit icon iconleft iconleft--light iconleft--search"
							title="search"></button>
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

					<a href="login.jsp" id="login-link" class="btn btn--small btn--header btn--rounded login">Admin Login</a>

				</div>
				</nav>
				</header>


		<div id="page" class="">
			<div id="join" class="fixed">
				<div id="content" class="clearit">
					<div class="fullWidth">

						<a href="/" class="ticket-logo ir"> <img
								src="images/lastfm_logo@2x.png" height="108" width="127"
								alt="music--song"> </a>

						<div class="content-region">
							<div id="signUp" class="needs-js">
								<h1>
									Publish Post
								</h1>
								<form action="doEdit.jsp?type=doAdd" name="myform" method="post" onSubmit="changeForm()" id="signUpForm" class="clearit">
									<fieldset>
										<div class="field field-username">
											<label for="username">
													Title
											</label>
											<input id="title" type="text" name="title" class="input" maxlength="15" autocomplete="off" value="">
										</div>
												<div class="field field-username">
											<label for="username">
												Profile
											</label>
												<textarea rows="7" cols="70" name="intorduction" id="intorduction"></textarea>
										</div>
								
										<div class="field field-username">
											<label for="username">
													Position
											</label>
											<input id="position" type="text" name="position" class="input" maxlength="15" autocomplete="off" value="">
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