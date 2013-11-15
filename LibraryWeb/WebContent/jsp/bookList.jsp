    
<%@ page language="java" import="java.util.*" %>
<%@ page import="de.laliluna.tutorial.library.*" %>

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
<title>Book list page</title>
</head>

<body>
	<table border="1">
		<tbody>
			<tr>
				<td>Author</td>
				<td>Book name</td>
				<td>Available</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		
		<%
			ArrayList arrayList = (ArrayList)request.getAttribute("books");
			for (Iterator iter = arrayList.iterator(); iter.hasNext();){
				Book element = (Book) iter.next();
				
					out.println("<tr>");
					out.println("<td>" + element.getAuthor() + "</td>") ;
					out.println("<td>" + element.getTitle() + "<td>");
					if (element.isAvailable())
						out.println("<td><input type=\"checkbox\") name=\"available\" value=\"true\" disabled checked></td>");
						else
							out.println("<td><input type=\"checkbox\") name=\"availabe\" value=\"true\" disabled></td>");
							out.println("<td><a href=\"bookEdit ?do=edit&id="+element.getID()+"\">Edit</a></td>");
							out.println("<td><a href=\"bookEdit ?do=delete&id="+element.getID()+"\">Delete</a></td>");
							out.println("</tr>");
					}
		%>	
		</tbody>
	</table>
	<br>
	<a href="bookEdit ?do=add">Add a new book</a>
</body>
</html>


