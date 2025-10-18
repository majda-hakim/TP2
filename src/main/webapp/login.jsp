<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Authentification</title>
    <style>
        body {
            font-family: "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #e3f2fd, #bbdefb);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #1565c0;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #90caf9;
            border-radius: 8px;
            margin-bottom: 20px;
            transition: 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #1976d2;
            outline: none;
            box-shadow: 0 0 5px #64b5f6;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #1976d2;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0d47a1;
        }

        .footer {
            text-align: center;
            margin-top: 15px;
            font-size: 13px;
            color: #555;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Connexion</h2>
    <form action="AuthServlet" method="post">
        <label for="login">Login :</label>
        <input type="text" id="login" name="login" placeholder="Entrez votre login" required>

        <label for="password">Mot de passe :</label>
        <input type="password" id="password" name="password" placeholder="Entrez votre mot de passe" required>

        <input type="submit" value="Se connecter">
    </form>
    <div class="footer">
        <p>© 2025 ENSA Khouribga</p>
    </div>
</div>

</body>
</html>
