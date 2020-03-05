<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="euc-kr" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Chapter 06</title>
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
							<li><a href="../index.jsp">Home</a></li>
							<li>
								<a href="#" class="icon fa-angle-down">Menu</a>
								<ul>
									<li><a href="../generic.jsp">Study</a></li>
									<li><a href="../resource.jsp">Resource</a></li>
									<li><a href="../contact.jsp">Contact</a></li>
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

			<!-- Main -->
				<section id="main" class="container">
					<header>
						<h2>Chapter 06. 상속</h2>
						<p>숫자만 기입하세요.</p>
					</header>
<div class="box">
		
                                                                        <form method="post" action="../solveAction6.jsp">
									
                                                                      
                                                                    
                                                                        <h4>1. 다음은 상속을 설명한 것이다. 틀린 것은?<br>
                                                                         1) 모든 클래스의 최상위 클래스는 Object이다.<br> 
                                                                         2) 부모 객체를 자식 클래스 타입의 변수에 대입 가능하다.<br>
                                                                         3) 부모 클래스의 private 메서드를 자식 클래스가 오버라이딩 할 수 없다.<br> 
                                                                         4) 부모 클래스를 상속하려면 extends 키워드가 필요하다.</h4>
                                                                                <div class="col-6 col-12-mobilep">
										 <input type="text" name="userAnswer" id="userAnswer" value="">
										</div><br>							
											<div class="col-12">
												<ul class="actions">
													<li><input type="submit" value="제출" /></li>
												</ul>
											</div>
									</form>
</div>
				</section>

			<!-- Footer -->
				<footer id="footer">
					<ul class="copyright">
						<li>&copy; Sungshin Project Team 6. All rights reserved.</li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>