<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>
<h3> infomation client</h3>
<form action="formulaire" method="post">
<table>
<tr>
<td> Nom </td>
<td><input type="text" name="nom" /> </td>
</tr>

 <tr>
<td> prenom </td>
<td><input type="text" name="prenom" /> </td>
</tr>

<tr>
<td> Adresse de livraison </td>
<td><input type="text" name="Adresse" /> </td>
</tr>

<tr>
<td> Numero de téléphone </td>
<td><input type="text" name="téléphone" /> </td>
</tr>
 
 
 
 <tr>
<td> Adresse email </td>
<td><input type="text" name="email" /> </td>
</tr>

 


<tr>
<td></td>
<td><input type="submit"  name="Valider" value="Valider"   /> </td>
</tr>



</table>

</form>
<br />
<b style="color:red;">
<%
String message =(String) request.getAttribute("message");
 
if(message !=null){
	
	out.print(message);
	
}


%></b>
</div>

</body>
</html>