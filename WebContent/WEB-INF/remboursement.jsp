<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remboursement</title>
</head>
<body>

<h1>Remboursement</h1>

<%
String nom = (String)request.getAttribute("nom");
String prenom = (String) request.getAttribute("prenom");
String date = (String)request.getAttribute("date");
double somme = (double)request.getAttribute("somme");
%>

<p><%= nom %></p>
<p><%= prenom %></p>
<p><%= date %></p>
<p><% out.println(somme); %></p>

</body>
</html>