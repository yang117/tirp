<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh" class="" data-ad-zone="anonymoushome:anonymoushome:overview">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
		<title>admin.jsp</title>
		<style>
html {
	zoom: 1;
}
</style>
		<link rel="stylesheet" href="css/whittle.css">
		<link rel="stylesheet" href="css/overview.secure.css">
		<link rel="stylesheet" href="css/master1.css">
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

					<a href="login.jsp" id="login-link" class="btn btn--small btn--header btn--rounded login">User Login</a>

				</div>
				</nav>
				</header>
			</div>
				<div id="content1" class="clearit">
				<div class="fullWidth">
					<div id="loginForm">
						<form action="dologin.jsp?type=doAdmin" method="post" name="myform"
							onSubmit="check()">

							<table class="logintable">
								<tbody>
									<tr>
										<td style="font-size: 12px;">
											<label for="username">
												Loginuser：
											</label>
										</td>
										<td align="left" style="width: 60%;">
											<input type="text" id="uName" name="uName" class="LoginBox"
												style="width: 98%;" value="">
										</td>
										<script>$("username").focus();</script>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td style="font-size: 12px;">
											<label for="password">
												Password：
											</label>
										</td>
										<td align="left">
											<input type="password" id="password" name="uPass" value="" 	class="LoginBox" style="width: 98%;">
										</td>
										<td>
											&nbsp;
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td align="right" style="padding-top: 1em;">
											<input type="submit" value="Login" name="login">
										</td>
										<td>
											&nbsp;
										</td>
									</tr>

								</tbody>
							</table>
						</form>

					</div>
				</div>
				<!-- .fullWidth -->
			</div>
			<!-- #content -->


		</div>


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