<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="euc-kr" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Resource</title>
		<meta charset="euc-kr" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
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
						<h2>�ڹ� ��õ ���� </h2>
						<p>�� ����</p>
					</header>
			
		<div class="box">


        <a href="https://book.naver.com/bookdb/book_detail.nhn?bid=12343442">  
       <img src="photo/easy.PNG" width="150" height="180" style="margin-right: 40px; margin-left:120px;" ></a>
        <a href="https://book.naver.com/bookdb/book_detail.nhn?bid=8589375">
            <img src="photo/ItisJava.PNG"width="150" height="180" style="margin-right: 40px; margin-left:40px;"> </a>
       <a href="https://book.naver.com/bookdb/book_detail.nhn?bid=10191151">  
            <img src="photo/StandardOfJava.PNG"width="150" height="180" style="margin-right: 30px; margin-left: 40px;"> </a>
   
     
</div>
				</section>


<section id="main" class="container">
					<header>
						<h2>�ڹ� ���� ���� </h2>
						<p>�ܿ� ����</p>
					</header>
					<div class="box">
<li><a href ="https://www.youtube.com/watch?v=khzmzto5xnI"> 01 �ڹ� �����ϱ� </a></li>
<li><a href ="https://www.youtube.com/watch?v=OvxwQTBgxrA"> 02 ���� ���� ������ </a></li>

<li><a href="https://www.youtube.com/watch?v=n-0B3kaRQGo">03 ����� �޼���</a></li>

<li><a href="https://youtu.be/Kh-qT2q1Pvw ">04 ��ü ���� </a></li>
<li><a href="https://youtu.be/0HS5BBDn1KY">05 ���ڿ�, �迭, ����� </a></li>
<li><a href=" https://youtu.be/KfF6HSViA2Y">06 ��� </a></li>
<li><a href="https://youtu.be/ISCrUynFKyc ">07 �߻� Ŭ������ �������̽� </a></li>
<li><a href="https://youtu.be/Dfg9jj3tzHU ">08 ���� Ŭ������ ���ٽ�</a></li>
<li><a href="https://youtu.be/6dE17BnB1VE ">09 �⺻ ��Ű��</a></li>
<li><a href="https://youtu.be/Wie6C3CoI6U ">10 ���� ó��</a></li>
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