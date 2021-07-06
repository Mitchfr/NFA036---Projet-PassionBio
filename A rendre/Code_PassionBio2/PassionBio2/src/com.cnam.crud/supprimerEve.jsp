<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!-- L'UTILISATEUR NE VERA JAMAIS CETTE PAGE, CAR CELLE-CI NE SERT QU'A EFFECTUER L'OPERATION DE SUPPRESSION -->

    <%
    try{
        // CHARGEMENT DU DRIVER
        String url = "jdbc:mysql://localhost:3308/bdpassionbio";
        String login = "root";
        String password = "";
    
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Connexion OK");
        Connection conn = DriverManager.getConnection(url, login, password);
    
        // CREATION DE L'OBJET STATEMENT
        Statement statement = conn.createStatement();
        // ON RECUPERE L'ID VENANT DU BOUTON DE LA PAGE ACCEUIL.JSP
        String id = request.getParameter("id_reference");
        // ON CONVERTIE L'ID DE TYPE STRING EN TYPE INT
        int numId = Integer.parseInt(id);
    
        // REQUETE SQL AFIN DE SUPPRIMER TOUTES LES INFOS D'UN EVENEMENT DE LA BDD
        String requete = " DELETE FROM evenement WHERE numEve = '" + numId + "'";
        // EXECUTION DE LA REQUETE
        statement.executeUpdate(requete);
        // ON RENVOIE L'UTILISATEUR DIRECTEMENT SUR LA PAGE D'ACCEUIL
        response.sendRedirect("../../accueil.jsp");
    
    }catch(Exception e) {   // MESSAGE D'ERREUR AU CAS OU IL Y AURAIT UN BUG
        
        out.println(request.getParameter("id_reference"));
    }
		
	%>

