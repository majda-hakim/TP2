<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %><%@ page import="com.example.Agence" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Initialisation du Bean Agence</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .form-container { max-width: 500px; margin: 0 auto; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"] {
            width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50; color: white; padding: 10px 20px;
            border: none; border-radius: 4px; cursor: pointer;
        }
        .result { background: #f0f0f0; padding: 15px; border-radius: 5px; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Initialisation du Bean Agence</h1>

        <form method="post">
            <div class="form-group">
                <label for="nom">Nom de l'agence:</label>
                <input type="text" id="nom" name="nom" required>
            </div>

            <div class="form-group">
                <label for="ville">Ville:</label>
                <input type="text" id="ville" name="ville" required>
            </div>

            <div class="form-group">
                <label for="codePostal">Code Postal:</label>
                <input type="text" id="codePostal" name="codePostal" required>
            </div>

            <input type="submit" value="Créer et Stocker le Bean">
        </form>

        <%
        // Vérifier si le formulaire a été soumis
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String nom = request.getParameter("nom");
            String ville = request.getParameter("ville");
            String codePostal = request.getParameter("codePostal");

            if (nom != null && ville != null && codePostal != null) {
                // Créer le bean
                Agence agence = new Agence(nom, ville, codePostal);

                // Stocker dans la session
                session.setAttribute("agence", agence);
        %>
                <div class="result">
                    <h2>Bean créé et stocké dans la session !</h2>
                    <h3>Attributs du Bean :</h3>
                    <p><strong>Nom:</strong> <%= agence.getNom() %></p>
                    <p><strong>Ville:</strong> <%= agence.getVille() %></p>
                    <p><strong>Code Postal:</strong> <%= agence.getCodePostal() %></p>

                    <br>
                    <a href="beanShow.jsp">Voir le bean dans l'autre page</a>
                </div>
        <%
            }
        }
        %>
    </div>
</body>
</html>
