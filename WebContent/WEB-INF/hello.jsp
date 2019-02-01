<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello</title>
</head>
<body>
<h1>Première JSP</h1>
<p>
Le JavaServer Pages ou JSP est une technique basée sur Java qui permet aux développeurs de créer dynamiquement du code HTML, XML ou tout autre type de page web. Cette technique permet au code Java et à certaines actions prédéfinies d’être ajoutés dans un contenu statique.
Depuis la version 2.0 des spécifications, la syntaxe JSP est complètement conforme au standard XML.
</p>
<!-- Commentaires html
Apparaissent
 -->
 <%-- Commentaires en java --%>
 
<%
/*Mettre les instructions
les boucles
les fonctions
ecrire dans le code html*/
out.println("texte à afficher dans le code html");
%>

<%!
/*Les déclarations
*/
double pi = 3.1415;
%>
pi:
<%=
/* variable à afficher dans le code html
*/
pi 
%>


</body>
</html>