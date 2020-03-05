<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="euc-kr" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Contact</title>
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

				<section id="main" class="container medium">
					<header>
						<h2>Contact Us</h2>
						<p> 사이트 이용 시 불편했던 점이나 개선됐으면 하는 점을 메일로 보내주세요.</p>
					</header>
					<div class="box" style= "text-align:center"> 
						<h3> daisylee624@gmail.com	</h3> 
						<h5> 작성예시 : [문제오류] Chapter 1의 1번 문제의 정답에 오류가 있는 것 같습니다. (제목)<br>
						        내용은 자유 형식입니다.
						</h5>						
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