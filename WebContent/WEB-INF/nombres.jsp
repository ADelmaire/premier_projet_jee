<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exo Chiffres</title>
<link 
rel = "stylesheet" 
href = "ressources/css/nombres.css"/>
</head>
<body>
<h1>
Exo Chiffres
</h1>

<%
for(int i =1 ; i <= 10 ; i++){
	out.print
	("<img src='ressources/Images/jee.jpg'/>");
}
%>

<table>
<%
int nombre = (int)request.getAttribute("nombre");
int mod = (int)request.getAttribute("mod");

for (int i=1 ; i < nombre+1; i++) {
	out.print("<td>" + i + "</td>");
	if (i % mod == 0) {
		out.println("</tr><tr>");
	}
}

%>
</table>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<button>Clique sur moi !</button>

<script type="text/javascript"
src="ressources/js/nombres.js"></script>

</body>
</html>