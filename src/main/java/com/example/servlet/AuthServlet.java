package com.example.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.*;

public class AuthServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String login = request.getParameter("login");
        String password = request.getParameter("password");

        // Charger le fichier properties
        InputStream input = getServletContext().getResourceAsStream("/WEB-INF/authentication.properties");
        Properties props = new Properties();
        props.load(input);

        // Vérifier les identifiants
        String storedPassword = props.getProperty(login);

        if (storedPassword != null && storedPassword.equals(password)) {
            // Succès
            RequestDispatcher rd = request.getRequestDispatcher("succes.jsp");
            rd.forward(request, response);
        } else {
            // Échec
            RequestDispatcher rd = request.getRequestDispatcher("erreur.jsp");
            rd.forward(request, response);
        }
    }
}
