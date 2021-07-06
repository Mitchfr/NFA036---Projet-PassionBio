<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*"%>

<%
			// Connexionj à la BDD passionbio 
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3308/bdpassionbio?useSSL=false&serverTimezone=UTC";
		String login="root";
		String password="";

            // si la connexion se passe bien 
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");					// appel du driver JDBC
			conn = DriverManager.getConnection(url,login,password);		// transmission des infos de connexion
            //out.println("Connexion OK");

    	
		} 
            // si un problème de connexion survient, on affiche le message d'erreur
        catch (SQLException ex){
			out.println("SQLException:" + ex.getMessage());
			out.println("SQLState: " + ((SQLException) ex).getSQLState());
			out.println("VendorError: " + ((SQLException) ex).getErrorCode());
			
		}

%>


