<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bonjour</title>
</head>
<body>

<h1>Bonjour JSP</h1>
<p>

<%
for(int i=1; i<100; i++) {
	out.println(i);
 if (i % 20 == 0) { 
	out.println("<br/>");
 }
}
%>

<%! int somme = 0; %>

<%
for(int i= 1; i <= 100; i++) {
	somme = somme + i;
}
%>

<%= somme %>
<%-- équivaut à: <% out.println(somme) %> --%>
</p>
</body>
</html>