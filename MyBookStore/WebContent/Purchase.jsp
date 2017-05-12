<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="User.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 	String s=(String)request.getParameter("bookid");
	HttpSession sess = request.getSession(false); //use false to use the existing session
	user u=(user)sess.getAttribute("use");
	
	String username=u.getUsername();//this will return username anytime in the session
	sess = request.getSession(); 
	sess.setAttribute("use",u);
	int result = Integer.parseInt(s);
	out.println(result);
	out.println(u.getUsername());
%>


</body>
</html>