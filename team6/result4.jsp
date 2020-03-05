<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="euc-kr" %>
<%@ page import="java.io.PrintWriter" %>
<%@page import= "java.sql.*"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Result</title>
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
						<h2>Result</h2>
						<p>채점 결과</p>
					</header>
					<div class="box">
						<div class="row">
							<div class="row-6 row-12-mobilep">
								<h3>1. 

    <% Connection conn = null;
    Statement stmt = null;
String correct_ans = null;
String u_ans = null;
String r = null;
int count = 0;
    try {
        Class.forName( "com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb3", "root", "1234");
        if (conn == null)
            throw new Exception( "데이터베이스에 연결할 수 없습니다.<BR>");
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery( "select correct_ans from question where q_id = 403; ");
        if (rs.next()) {
           correct_ans = rs.getString("correct_ans");
           request.setAttribute( "correct_ans", correct_ans);
        }

        ResultSet rs2 = stmt.executeQuery( "select u_ans from sol where id = '" + userID + "' and q_id = " + 403 + "; ");
        if (rs2.next()) {
            u_ans = rs2.getString("u_ans");
            request.setAttribute( "u_ans", u_ans);
        }

out.print("당신의 답: ");
out.println(u_ans);
out.println("<br>");
out.print("정답: ");
out.println(correct_ans);


    }
    finally {
        try {
            stmt.close();
        }
        catch (Exception ignored) {
        }
        try {
            conn.close();
        }
        catch (Exception ignored) {
        }
    }%></h3>
								
							</div>
                                                      <form method="post" action="explain/Ch4exp.jsp">
                                                        <div class="col-3 col-12-mobilep">
				                                <ul class="actions">
								<li><input type="submit" value="해설 보기" /></li>
								</ul>
							</div>
                                                      </form>
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