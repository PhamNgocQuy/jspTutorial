<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="helloBean" class ="jsptutorial.HelloBean"></jsp:useBean>
	<h3> Say hello not setProperty for bean </h3>
	<jsp:getProperty property="hello" name="helloBean"/>
	<jsp:setProperty property="name" name="helloBean" value="JSP"/>
	<H3>Say Hello after setName: </H3>
	<jsp:getProperty property="hello" name="helloBean"/>
</body>
</html>