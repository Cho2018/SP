<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="euc-kr" %>
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
						<h2>���� Ǯ��</h2>
						<p>é�͸� �����ϼ���.</p>
					</header>
					<div class="box">
                                                <h3><a href="question/Ch1.jsp">Chapter 01. �ڹ� �����ϱ�</a></h3>
                                                <h3><a href="question/Ch2.jsp">Chapter 02. �ڹ� ���α׷� ������ ���� ���� ������</a></h3>
                                                <h3><a href="question/Ch3.jsp">Chapter 03. ����� �޼���</a></h3>
                                                <h3><a href="question/Ch4.jsp">Chapter 04. ��ü ����</a></h3>
                                                <h3><a href="question/Ch5.jsp">Chapter 05. ���ڿ�, �迭, �����</a></h3>
                                                <h3><a href="question/Ch6.jsp">Chapter 06. ���</a></h3>
                                                <h3><a href="question/Ch7.jsp">Chapter 07. �߻� Ŭ������ �������̽�</a></h3>
                                                <h3><a href="question/Ch8.jsp">Chapter 08. ���� Ŭ������ ���ٽ�</a></h3>
                                                <h3><a href="question/Ch9.jsp">Chapter 09. �⺻ ��Ű��</a></h3>
                                                <h3><a href="question/Ch10.jsp">Chapter 10. ���� ó���� ���׸� ���α׷���</a></h3>
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