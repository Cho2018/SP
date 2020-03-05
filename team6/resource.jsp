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
						<h2>자바 추천 교재 </h2>
						<p>주 교재</p>
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
						<h2>자바 무료 강의 </h2>
						<p>단원 목차</p>
					</header>
					<div class="box">
<li><a href ="https://www.youtube.com/watch?v=khzmzto5xnI"> 01 자바 시작하기 </a></li>
<li><a href ="https://www.youtube.com/watch?v=OvxwQTBgxrA"> 02 기초 문법 익히기 </a></li>

<li><a href="https://www.youtube.com/watch?v=n-0B3kaRQGo">03 제어문과 메서드</a></li>

<li><a href="https://youtu.be/Kh-qT2q1Pvw ">04 객체 지향 </a></li>
<li><a href="https://youtu.be/0HS5BBDn1KY">05 문자열, 배열, 디버깅 </a></li>
<li><a href=" https://youtu.be/KfF6HSViA2Y">06 상속 </a></li>
<li><a href="https://youtu.be/ISCrUynFKyc ">07 추상 클래스와 인터페이스 </a></li>
<li><a href="https://youtu.be/Dfg9jj3tzHU ">08 내부 클래스와 람다식</a></li>
<li><a href="https://youtu.be/6dE17BnB1VE ">09 기본 패키지</a></li>
<li><a href="https://youtu.be/Wie6C3CoI6U ">10 예외 처리</a></li>
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