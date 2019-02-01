<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>

<h1>Accueil</h1>
<h2>Vous êtes sur la page d'accueil</h2>

<% 
System.out.println("Affichage Java");

for(int i=1; i<10; i++) {
	System.out.println(i);
}

%>
<!-- commentaires façon html
apparaissent dans la console du navigateur
visuellement tout ce qui est entre <%%> est exécuté mais
jamais affiché -->

<%! String chaine = "titre avec Java"; %>
<!-- déclarations -->

<%= chaine %>
<!-- permet d'écrire dans le html
affichage d'une variable ou d'un contenu -->

<%= "<p>Paragraphe</p>" %>

<% out.println("<p>Encore du texte java dans le code html</p>"); %>

<%! String nom = "Jack"; %>
<h4>Bonjour Mr: <%= nom %></h4>
<% if (nom.equals("Jack")) {
	out.println("vous êtes M Jack");
}else {
	out.println("interdiction d'entrer");
}
%>


<h3>FIN</h3>

</body>
</html>