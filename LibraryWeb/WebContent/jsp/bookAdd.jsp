<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme() +"://"+request.getServerName()
+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<base href="<%=basePath%>">
<title>Book add page</title>
</head>
<body>
<form name="edit" action="bookEdit" method="post">

<table border="1">
	<tbody>
		<tr>
			<td>Author:</td>
			<td><input type="text" name="author" value=""></td>
		</tr>
		<tr>
			<td>Title:</td>
			<td><input type="text" name="title" value=""></td>
		</tr>
		<tr>
			<td>Available:</td>
			<td><input type="checkbox" name="available" value="true"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" name="btnSave" value="Save"></td>
		</tr>
	
	</tbody>

</table>
</form>
</body>
</html>