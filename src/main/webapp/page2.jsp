<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jspf" %>

<style>
/* ====== STYLE PAGE 2 ====== */
body {
    font-family: "Segoe UI", sans-serif;
    background: linear-gradient(135deg, #ede7f6, #d1c4e9);
    margin: 0;
    color: #333;
}

/* ====== CONTENU CENTRAL ====== */
.container {
    max-width: 800px;
    margin: 60px auto;
    background-color: white;
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    text-align: center;
    animation: fadeIn 1s ease-in-out;
}

h3 {
    color: #6a1b9a;
    font-size: 26px;
    margin-bottom: 15px;
}

p {
    font-size: 18px;
    line-height: 1.6;
}

/* ====== ANIMATION ====== */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}
</style>

<div class="container">
    <h3>Bienvenue sur Page 2</h3>
    <p>Contenu spécifique à la deuxième page.</p>
</div>

<%@ include file="footer.jspf" %>
