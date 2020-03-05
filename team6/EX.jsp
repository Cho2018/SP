<%@page contentType= "text/html; charset=euc-kr"%>
<html>
	<head></head>
	<body>
	<%
 		String radioValue=request.getParameter("exercise");
		if (radioValue.equals("EX1")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX1.html");
                                dispatcher.include(request, response);
		} 
		else if (radioValue.equals("EX2")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX2.html");
                                dispatcher.include(request, response);
		}
		else if (radioValue.equals("EX3")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX3.html");
                                dispatcher.include(request, response);
		} 
		else if (radioValue.equals("EX4")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX4.html");
                                dispatcher.include(request, response);
		} 
		else if (radioValue.equals("EX5")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX5.html");
                                dispatcher.include(request, response);
		}
		else if (radioValue.equals("EX6")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX6.html");
                                dispatcher.include(request, response);
		} 
		else if (radioValue.equals("EX7")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX7.html");
                                dispatcher.include(request, response);
		} 
		else if (radioValue.equals("EX8")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX8.html");
                                dispatcher.include(request, response);
		}
		else if (radioValue.equals("EX9")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX9.html");
                                dispatcher.include(request, response);
		} 
		else if (radioValue.equals("EX10")){
		       out.flush();
                  	       RequestDispatcher dispatcher = request.getRequestDispatcher("code/EX10.html");
                                dispatcher.include(request, response);
		}
		else
		       out.println("존재하지 않는 예제입니다.");
	%>
	</body>
</html>