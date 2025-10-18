<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Visiteurs - Version 1 (Scriptlet)</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; background-color: #f5f5f5; }
        .container { max-width: 600px; margin: 0 auto; background-color: white; padding: 20px; border-radius: 8px; }
        h1 { color: #007bff; border-bottom: 2px solid #007bff; }
        .visitor-list { list-style-type: none; padding: 0; }
        .visitor-list li { background-color: #f9f9f9; padding: 10px; margin: 5px 0; border-left: 4px solid #007bff; }
        .info { color: #666; margin-top: 10px; }
    </style>
</head>
<body>
<div class="container">
    <h1>VERSION 1 : Scriptlet et Expression</h1>

    <%
        String nomVisiteur = request.getParameter("nom");
        List<String> visiteurs = (List<String>) session.getAttribute("visiteurs");

        if (visiteurs == null) {
            visiteurs = new ArrayList<>();
            session.setAttribute("visiteurs", visiteurs);
        }

        if (nomVisiteur != null && !nomVisiteur.trim().isEmpty() && !visiteurs.contains(nomVisiteur)) {
            visiteurs.add(nomVisiteur);
        }
    %>

    <% if (nomVisiteur != null && !nomVisiteur.trim().isEmpty()) { %>
    <p class="info">✓ Bienvenue <%= nomVisiteur %>!</p>
    <% } %>

    <h2>Liste des visiteurs :</h2>
    <ul class="visitor-list">
        <%
            if (visiteurs.isEmpty()) {
        %>
        <li>Aucun visiteur pour le moment</li>
        <%
        } else {
            for (int i = 0; i < visiteurs.size(); i++) {
        %>
        <li><%= (i+1) + ". " + visiteurs.get(i) %></li>
        <%
                }
            }
        %>
    </ul>

    <p class="info"><strong>Total : <%= visiteurs.size() %> visiteur(s)</strong></p>
</div>
</body>
</html>
