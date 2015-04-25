<%@ page language="java" import="java.util.*,entity.*,dao.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
		<title>register</title>
		<link rel="stylesheet" href="css/overview1.css">
		<link rel="stylesheet" href="css/master1.css">

		<script type="text/javascript">
function changeForm()
{

	if(checkUserName()&&rule()&&pwdRule()&&Email())
	{
		return true;
	}
	else
	{
		return false;
	}
}
//验证非空
function checkUserName()
{
	var name=document.myform.username;
	var txtEmail=document.myform.email;
	if(name.value=="")
	{
		alert("请输入用户名！！！");return false;
	}
	
	else if(txtEmail.value=="")
	{
		alert("Email不能为空！！！");return false;
	} 
	
	else
	{
		return true;
	}  
}
function rule()
{
	var name=document.myform.username.value;
	var regin=/^[a-zA-Z][a-zA-Z0-9_]{4,15}$/
	if(regin.test(name))
	{
		return true;
	}
	else
	{
		alert("用户名格式不正确");return;
		
	}
	return true;
}
function pwdRule()
{
	var pwd=document.myform.pword.value;
	if(pwd=="")
	{
		alert("未输入密码\n"+"请输入密码");
		return false;
	}
	if(pwd.length<6||pwd.length>12)
	{
		alert("密码必须大于等于6个字符\n");
		return false;
	}
	return true;
}
function Email()
{
	var Email=document.myform.email.value;
	var regin=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	if(regin.test(Email))
	{
		return true;
	}
	else 
	{
		alert("Email格式不正确");
		return false;
	}
}


</script>
		<script src="http://cdn.music--song/javascript/javascript/231181/lib/modernizr.js"></script>
	</head>
	<body class="a-overview lang-zh theme-flatness" style="">
		<div id="page" class="">
			<div id="join" class="fixed">
				<div id="content" class="clearit">
					<div class="fullWidth">

						<a href="/" class="ticket-logo ir"> 
						<img src="images/lastfm_logo@2x.png" height="108" width="127" 	alt=""> </a>

						<div class="content-region">
							<div id="signUp" class="needs-js">
								<h1>
									join Go2Trip
								</h1>
								
								<div id="signIn">
									Already have an account?
									<a href="login.jsp">Login</a>
								</div>

								<form action="doEdit.jsp?type=saveUser" name="myform" method="post"
									onSubmit="changeForm()" id="signUpForm" class="clearit">
									<fieldset>
										<div class="field field-username">
											<label for="username">
												Username
											</label>
											<input id="username" type="text" name="username" class="input" maxlength="15" autocomplete="off" value="">
										</div>

										<div class="field field-email">
											<label for="email">
												 Email address
											</label>

											<input type="text" name="email" id="email" class="input"
												autocomplete="off">
										</div>

										<div class="field field-password">
											<label for="password">
												Password
											</label>

											<input type="password" name="pword" id="password"
												class="input">
										</div>
										<div class="field field-password">
											<label for="password">
												Phone number
											</label>

											<input id="phone" type="text" name="phone" class="input" maxlength="15" autocomplete="off" value="">
										</div>
										<div class="field field-password">
											<label for="password">
												Profile
											</label>
											<textarea rows="5" cols="40" name="profile" id="profile"></textarea>
										
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
