<%@page contentType= "text/html; charset=euc-kr"%>
<%@page import= "java.sql.*"%>
<%@ page import="java.io.PrintWriter" %>
<%
        PrintWriter script = response.getWriter();
        String userID = null;
        if (session.getAttribute("userID") != null) {
            userID = (String) session.getAttribute("userID");
        }

        if (userID == null) {
            script.println("<script>");
            script.println("alert('�α����� �ϼ���.')");
            script.println("location.href = 'login.jsp'");
            script.println("</script>");
        }

       String ans = request.getParameter( "userAnswer" );
       if (ans == null) {
            script.println("<script>");
            script.println("alert('�����͸� �Է��ϼ���.')");
            script.println("history.back()");
            script.println("</script>"); }

       Connection conn = null;
       Statement stmt = null;
       try {
             Class.forName( "com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection( "jdbc:mysql://localhost:3306/webdb3", "root", "1234");
             if (conn == null)
                  throw new Exception( "�����ͺ��̽��� ������ �� �����ϴ�.");
             stmt = conn.createStatement();
             String command = String.format( "insert into sol (s_id, u_ans, id, q_id) values ('%s', '%s', '%s', '%d');", (userID + "0502"), ans, userID, 502);
             int rowNum = stmt.executeUpdate(command);
             if (rowNum < 1)
                  throw new Exception( "�����͸� DB�� �Է��� �� �����ϴ�.");
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
       }
       response.sendRedirect( "result5.jsp");
%>
