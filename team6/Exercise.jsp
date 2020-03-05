<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="euc-kr" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Exercise</title>
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
						<h2> �����ڵ�</h2>
						<p>Ȯ���� �� ������ �����ϼ���.</p>
					</header>
				            	<form action =/team6/EX.jsp method=get>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX1 id=EX1> <label for=EX1>2�� ������ �� ����ϱ�</label><BR> 
						</div>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX2 id=EX2> <label for=EX2>���� ���� ���ϱ�</label><BR>
						</div>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX3 id=EX3> <label for=EX3>���� �ϼ� ����ϱ�</label><BR>
						</div>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX4 id=EX4> <label for=EX4>�ִ� ����� ã��</label><BR>
						</div>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX5 id=EX5> <label for=EX5>���� ��� ����ϱ�</label><BR>
						</div>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX6 id=EX6> <label for=EX6>����ã�� �����ϱ�</label><BR>
						</div>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX7 id=EX7> <label for=EX7>Television ������</label><BR>
						</div>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX8 id=EX8> <label for=EX8>�迭�� ����� ���� ��� ���ϱ�</label><BR>
						</div>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX9 id=EX9> <label for=EX9>��� ���� ����</label><BR>
						</div>
						<div class="col-4 col-12-narrower">
						<input type=radio name=exercise value=EX10 id=EX10> <label for=EX10>������ �Ŵ��� Ŭ���� �ۼ��ϱ�</label><BR>
						</div>
						<BR>
						<input type=submit value='����'> 
					</form>
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