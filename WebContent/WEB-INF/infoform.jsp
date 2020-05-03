<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.rsv.beans.Formulaire" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br />
<b style="color:green;">
<%
String message =(String) request.getAttribute("message");
 
if(message !=null){
	
	out.print(message);
	
}


%></b>
<% 
Formulaire formulaire=(Formulaire) request.getAttribute("formulaire");

%>
<table border="1">
<tr>
<td>nom </td>
<td> <%=formulaire.getNom()%></td>
</tr>

<td>prenom </td>
<td> <%=formulaire.getPrenom()%></td>
</tr>

<td>Adresse </td>
<td> <%=formulaire.getAdresse()%></td>
</tr>


<td>téléphone </td>
<td> <%=formulaire.getTéléphone()%></td>
</tr>


<td>email </td>
<td> <%=formulaire.getEmail()%></td>
</tr>

</table>

</body>
</html>