<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Page Source du Forward</title>
    <style>
        body {
            font-family: "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #bbdefb, #90caf9);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 500px;
            text-align: center;
        }

        h2 {
            color: #1565c0;
            margin-bottom: 20px;
        }

        h3 {
            color: #333;
            font-weight: normal;
        }

        .footer {
            margin-top: 20px;
            font-size: 13px;
            color: #555;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Page Source du Forward</h2>

    <%
        System.out.println("Avant le forward : Exécution dans ForwardSource.jsp");
        out.println("<h3>Avant le forward : affichage dans la page source</h3>");
    %>

    <jsp:forward page="ForwardTarget.jsp" />

    <%
        System.out.println("Après le forward : ce code ne s'exécute PAS !");
        out.println("<h3>Après le forward : ce texte ne s'affichera jamais</h3>");
    %>

    <div class="footer">© 2025 ENSA Khouribga</div>
</div>

</body>
</html>
