<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*"%>
		

</head>
<body>
<!-- Construction du tableau pour afficher les donnees -->
<table  class="table table-hover">
  <thead class="thead-dark">
    <tr>
      <th scope="col">numEquip</th>
      <th scope="col">dispoEquip</th>
      <th scope="col">nomEquip</th>
      <th scope="col">totalEquip</th>
	  <th scope="col">dateEmprunt</th>
      <th scope="col">heureEmprunt</th>
      <th scope="col">dateRetour</th>
      <th scope="col">heureRetour</th>
  


    </tr>
	</thead>
  	<tbody>
<%

		try {

					// création de la requette pour recupérer les données de la BDD
			Statement statement = conn.createStatement();
			ResultSet resultat = statement.executeQuery("select * from equipement");
					// on boucle tant qu'il y a des enregistrements
			while(resultat.next()) {	
					
								// on va chercher les donnees de la base client
        int id_numEquip = resultat.getInt("numEquip");               
				String dispo_Equip = resultat.getString("dispoEquip");
				String nom_Equip = resultat.getString("nomEquip");
        int total_Equip = resultat.getInt("totalEquip"); 
        String  date_Emprunt = resultat.getString("dateEmprunt");  
        String heure_Emprunt =resultat.getString("heureEmprunt");
        String date_Retour = resultat.getString("dateRetour");
        String heure_Retour = resultat.getString("heureRetour");
                // on affiche les donnees sour format HTML en tableau
        %>
           
        <tr>
          <td><%=id_numEquip %></td>
          <td><%=dispo_Equip %></td>
          <td><%=nom_Equip %></td>
          <td><%=total_Equip %></td>
          <td><%=date_Emprunt%></td>
          <td><%=heure_Emprunt%></td>
          <td><%=date_Retour %></td>
          <td><%=heure_Retour %></td>
 
           <!-- generation des boutons 'modifier' et 'supprimer' -->
          <td><button type="button" class="btn btn-danger"><a href="src/com.cnam.crud/supprimerEve.jsp?id_reference=<%=id_numEquip%>" style= "color: #ffffff">Supprimer</a></button></td>
          <td><button type="button" class="btn btn-info"><a href="src/com.cnam.crud/modifierEve.jsp?id_reference=<%=id_numEquip%>" style="color: #000000">Modifier</a></button></td>
  			</tr>
<%
              
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