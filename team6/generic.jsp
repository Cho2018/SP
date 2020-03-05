<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="euc-kr" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Study</title>
		<meta charset="euc-kr" />
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
									<li><a href="join.jsp">Join</a></li>
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
						<h2>Study</h2>
						<p>공부를 해보자.</p>
					</header>
					<div class="box">
						<h3><a href="test.jsp">문제 풀기</a></h3>
						<p>챕터별로 문제가 수록되어 있다.</p>
						<div class="row">
							<div class="row-6 row-12-mobilep">
								<h3><a href="Exercise.jsp">예제코드</a></h3>
								<p>챕터별 문제 이외에도 코딩 공부에 도움이 되는 예제코드를 제공한다.</p>
							</div>
						</div>
					</div>
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