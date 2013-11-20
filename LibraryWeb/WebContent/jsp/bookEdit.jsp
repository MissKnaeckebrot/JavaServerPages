<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="de.laliluna.tutorial.library.*" %>

<%
	Book book = (Book)request.getAttribute("book");
%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()
+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<base href="<%=basePath%>">
<title>Book edit page</title>
</head>

	<body>
		<form name="edit" action="bookEdit" method="post">
			<table>
			<tbody>
				<tr>
					<td>Author:</td>
					<td><input type="text" name="author" value="<%=book.getAuthor() %>"></td>
				</tr>
				<tr>
					<td>Title:</td>
					<td><input type="text" name="title" value="<%=book.getTitle() %>"></td>
				</tr>
				<tr>
					<td>Available:</td>
					<td><input type="checkbox" name="available" value="true"
					<% if(book.isAvailable()) out.println("checked");%>></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="btnSave" value="Save"></td>
				</tr>
			</tbody>
			</table>
			<input type="hidden" name="id" value="<%=book.getID() %>">
		</form>

	</body>
</html>