<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.util.Random,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<%! 
		public int sum(int a,int b)
		{
			return a+b;
		}
	
	 %>
</head>
<body>
	<%
		Random random = new Random();
		int randNumber = random.nextInt(3);
		if(randNumber == 0)
		{
	%>
	<h1>Random value =<%=randNumber %></h1>
	<%
		}else if(randNumber == 1) {%>
		
	<h2>Random value =<%=randNumber %></h2>
	<% } else { %>
	
	<h3>Random value =<%=randNumber %></h3>
	<% } %>	
	<a href="<%= request.getRequestURI() %>">Try Again</a>
	<h1> 1 + 1 =<%=sum(1,1) %></h1>
</body>
</html>