package com.example.servlet;

import java.io.Serializable;

public class Agence implements Serializable {
    private static final long serialVersionUID = 1L;

    private String nom;
    private String ville;
    private String codePostal;

    // Constructeur par défaut
    public Agence() {
    }

    // Constructeur avec paramètres
    public Agence(String nom, String ville, String codePostal) {
        this.nom = nom;
        this.ville = ville;
        this.codePostal = codePostal;
    }

    // Getters et Setters
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getCodePostal() {
        return codePostal;
    }

    public void setCodePostal(String codePostal) {
        this.codePostal = codePostal;
    }

    // Méthode toString()
    @Override
    public String toString() {
        return "Agence [nom=" + nom + ", ville=" + ville + ", codePostal=" + codePostal + "]";
    }
}
