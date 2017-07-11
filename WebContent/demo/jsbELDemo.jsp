<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="emp" class="jsptutorial.Employee">
	<jsp:setProperty property="empNo" name="emp" value="E007"/>
	<jsp:setProperty property="empName" name="emp" value="ronaldo"/>
	</jsp:useBean>
	<br>
	EmpNo: <input type = "text" value="${emp.empNo}"> 
	<br>
	EmoName: <input type ="text" value ="${emp.empName}">

</body>
</html>