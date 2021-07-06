<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*"%>
		

</head>
<body>
<! -- Construction du tableau pour afficher les donnees -->
<table  class="table table-hover">
  <thead class="thead-dark">
  <!-- Construction du tableau pour afficher les donnees -->
    <tr>
      <th scope="col">numEve</th>
      <th scope="col">dateEve</th>
      <th scope="col">nomEve</th>
      <th scope="col">noteEve</th>
	    <th scope="col">heureDebutEve</th>
      <th scope="col">dureeEve</th>
      <th scope="col">placeMaxEve</th>
      <th scope="col">nbrParticipant</th>
      <th scope="col">Action</th>
      


    </tr>
	</thead>
  	<tbody>
<%

		try {
		        // création de la requette pour recupérer les données de la BDD
			Statement statement = conn.createStatement();
			ResultSet resultat = statement.executeQuery("select * from evenement");
					// on boucle tant qu'il y a des enregistrements
			while(resultat.next()) {	
			
								// on va chercher les donnees de la base client
        int id_evenement = resultat.getInt("numEve");               
				String dateEvenement = resultat.getString("dateEve");
				String nomEvenement = resultat.getString("nomEve");
        int noteEvenement = resultat.getInt("noteEve"); 
        String  heureDebutEvevenement = resultat.getString("heureDebutEve");  
        int dureeEvenement = Integer.parseInt(resultat.getString("dureeEve"));
        int placeMaxEvenement = resultat.getInt("placeMaxEve");
        int nbrParticipantnement = resultat.getInt("nbrParticipant");
        %>
              <!-- on affiche les donnees sour format HTML en tableau-->
        <tr>
          <td><%=id_evenement %></td>
          <td><%=dateEvenement %></td>
          <td><%=nomEvenement %></td>
          <td><%=noteEvenement %></td>
          <td><%=heureDebutEvevenement%></td>
          <td><%=dureeEvenement%></td>
          <td><%=placeMaxEvenement %></td>
          <td><%=nbrParticipantnement %></td>
             <!-- generation des boutons 'modifier' et 'supprimer'-->
          <td><button type="button" class="btn btn-danger"><a href="src/com.cnam.crud/supprimerEve.jsp?id_reference=<%=id_evenement%>" style= "color: #ffffff">Supprimer</a></button></td>
          <td><button type="button" class="btn btn-info"><a href="src/com.cnam.crud/modifierEve.jsp?id_reference=<%=id_evenement%>" style="color: #000000">Modifier</a></button></td>          						
				</tr>
<%
                  // on affiche les donnees sour format HTML en tableau                
      }

		} catch (SQLException ex){          // affiche un message d'erreur si il y a un bug
			{ out.println("SQLException:" + ex.getMessage());
			out.println("SQLState: " + ((SQLException) ex).getSQLState());
			out.println("VendorError: " + ((SQLException) ex).getErrorCode());
			}
		}
 
%>
	
	
	</tbody>
</table>

</body>
</html>