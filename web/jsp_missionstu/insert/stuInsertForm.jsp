<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../stuHome.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insertForm</title>
	<style>
		body{
			text-align: center;
			margin: 30px;
		}
	</style>
</head>
<body>
<h3>insertForm</h3>
<form action="stuInsertPro.jsp" method="post">
	no : <input type="text" id="sno" name="sno"/> <br>
	name : <input type="text" id="sname" name="sname"/> <br>
	age : <input type="text" id="sage" name="sage"> <br>
	grade : <input type="text" id="sgrade" name="sgrade"> <br>
	depart1 : <input type="text" id="sdepart1" name="sdepart1"/> <br>
	depart2 : <input type="text" id="sdepart2" name="sdepart2"/> <br>
	<input type="submit" value="전송"/>
</form>
</body>
</html>