<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Visiteurs - Version 3 (Expression Language)</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; background-color: #f5f5f5; }
        .container { max-width: 600px; margin: 0 auto; background-color: white; padding: 20px; border-radius: 8px; }
        h1 { color: #dc3545; border-bottom: 2px solid #dc3545; }
        .visitor-list { list-style-type: none; padding: 0; }
        .visitor-list li { background-color: #f9f9f9; padding: 10px; margin: 5px 0; border-left: 4px solid #dc3545; }
        .info { color: #666; margin-top: 10px; }
    </style>
</head>
<body>
<div class="container">
    <h1>VERSION 3 : Expression Language</h1>

    <jsp:useBean id="visiteurs" class="java.util.ArrayList" scope="session" />

    <%
        String nomVisiteur = request.getParameter("nom");

        if (nomVisiteur != null && !nomVisiteur.trim().isEmpty() && !visiteurs.contains(nomVisiteur)) {
            visiteurs.add(nomVisiteur);
        }
    %>

    <c:if test="${not empty param.nom}">
        <p class="info">✓ Bienvenue ${param.nom}!</p>
    </c:if>

    <h2>Liste des visiteurs :</h2>
    <ul class="visitor-list">
        <c:choose>
            <c:when test="${empty visiteurs}">
                <li>Aucun visiteur pour le moment</li>
            </c:when>
            <c:otherwise>
                <c:forEach var="visiteur" items="${visiteurs}" varStatus="status">
                    <li>${status.count}. ${visiteur}</li>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </ul>

    <p class="info"><strong>Total : ${visiteurs.size()} visiteur(s)</strong></p>
</div>
</body>
</html>
