<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Visiteurs - Version 2 (useBean)</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; background-color: #f5f5f5; }
        .container { max-width: 600px; margin: 0 auto; background-color: white; padding: 20px; border-radius: 8px; }
        h1 { color: #28a745; border-bottom: 2px solid #28a745; }
        .visitor-list { list-style-type: none; padding: 0; }
        .visitor-list li { background-color: #f9f9f9; padding: 10px; margin: 5px 0; border-left: 4px solid #28a745; }
        .info { color: #666; margin-top: 10px; }
    </style>
</head>
<body>
<div class="container">
    <h1>VERSION 2 : jsp:useBean</h1>

    <jsp:useBean id="listeVisiteurs" class="java.util.ArrayList" scope="session" />

    <%
        String nomVisiteur = request.getParameter("nom");

        if (nomVisiteur != null && !nomVisiteur.trim().isEmpty() && !listeVisiteurs.contains(nomVisiteur)) {
            listeVisiteurs.add(nomVisiteur);
        }
    %>

    <% if (nomVisiteur != null && !nomVisiteur.trim().isEmpty()) { %>
    <p class="info">✓ Bienvenue <%= nomVisiteur %>!</p>
    <% } %>

    <h2>Liste des visiteurs :</h2>
    <ul class="visitor-list">
        <%
            if (listeVisiteurs.isEmpty()) {
        %>
        <li>Aucun visiteur pour le moment</li>
        <%
        } else {
            for (int i = 0; i < listeVisiteurs.size(); i++) {
        %>
        <li><%= (i+1) + ". " + listeVisiteurs.get(i) %></li>
        <%
                }
            }
        %>
    </ul>

    <p class="info"><strong>Total : <%= listeVisiteurs.size() %> visiteur(s)</strong></p>
</div>
</body>
</html>
