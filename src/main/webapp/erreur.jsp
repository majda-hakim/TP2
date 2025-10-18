<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Erreur</title>
    <style>
        body {
            font-family: "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #ffcdd2, #ef9a9a);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .message-box {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #c62828;
            margin-bottom: 20px;
        }

        p {
            color: #333;
            font-size: 16px;
            margin-bottom: 30px;
        }

        a {
            text-decoration: none;
            background-color: #c62828;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            transition: 0.3s;
        }

        a:hover {
            background-color: #8e0000;
        }

        .footer {
            margin-top: 15px;
            font-size: 13px;
            color: #555;
        }
    </style>
</head>
<body>

<div class="message-box">
    <h2>Échec de l'authentification ❌</h2>
    <p>Login ou mot de passe incorrect.<br>Veuillez réessayer.</p>
    <a href="login.jsp">Retour</a>
    <div class="footer">© 2025 ENSA Khouribga</div>
</div>

</body>
</html>
