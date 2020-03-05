<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>  
		<title>Join</title>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">
	<div id="page-wrapper">
		<header id="header">
			<nav id="nav">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li>
						<a href="#" class="icon fa-angle-down">Menu</a>
						<ul> 
							<li><a href="generic.jsp">Study</a></li>
							<li><a href="resource.jsp">Resource</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</li>
<%
String userID = null;
if (session.getAttribute("userID") != null) {
userID = (String)session.getAttribute("userID");
}
%>
<%                            
if (userID == null) {
                        %>
							<li>
								<a href="#" class="icon-fa-angle-down">Login</a>
								<ul>
									<li><a href="login.jsp">Login</a></li>
									<li class="active"><a href="join.jsp">Join</a></li>
								</ul>
							</li>
<%
                            }
                            else {
                        %>
<li>
                            <a href="#" class="icon-fa-angle-down">Logout</a>
                            <ul>
                                <li><a href="logoutAction.jsp">Logout</a></li>
                            </ul>
                        </li>
                        <%
                            }
                        %>
				</ul>
			</nav> 
		</header>
		<section id="main" class="container">
			<header>
				<h2>JOIN</h2>
				<p>회원가입</p>
			</header>
			<section id="main" class="box">
				<form method="post" action="joinAction.jsp">
					<div class="row gtr-uniform gtr-50">
						<div class="col-6 col-12-mobilep">
							<input type="text" class="form-control" placeholder="아이디" name="userID" minlength="3">
						</div>
						<div class="col-6 col-12-mobilep">
							<input type="password" class="form-control" placeholder="비밀번호" name="password" minlength="4">
						</div>
						<div class="col-9 col-12-mobilep">
							<input type="text" class="form-control" placeholder="나이" name="age" >
						</div>
						<div class="col-9 col-12-mobilep" >
							<input type="text" class="form-control" placeholder="직업" name="job" >
						</div>
						<div class="col-3 col-12-mobilep" >
							<input type="submit" class="btn btn-primary form-control" value="회원가입">
						</div>							
					</div>									
				</form>				
			</section>
		</section>
<footer id="footer">
					<ul class="copyright">
						<li>&copy; Sungshin Project Team 6. All rights reserved.</li>
					</ul>
				</footer>
	</div>
	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>
