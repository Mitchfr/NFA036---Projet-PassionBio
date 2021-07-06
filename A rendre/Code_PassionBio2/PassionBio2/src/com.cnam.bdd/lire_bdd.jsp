<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*"%>
		

<%
        // arrayList qui stocke les donnees de la BDD.
        // elle servira à manipuler les données (ajout, modifications, suppressions)
    ArrayList<Evenement> arrayEvenement = new  ArrayList<Evenement>();
    ArrayList<Equipement> arrayEquipement = new  ArrayList<Equipement>();

        // Instancie l'objet eve qui va recuperer les données champs par champs
    Evenement eve = new Evenement();
    Equipement equipement = new Equipement();
 
		try {

					// création de la requette pour afficher les informations de la base bdpassionbio
			Statement statement = conn.createStatement();
			ResultSet resultat = statement.executeQuery("select * from evenement");
					// on boucle tant qu'il y a des enregistrements
			while(resultat.next()) {	
			
				
						// on va chercher les donnees de la base client
                eve.setNumEve(resultat.getInt("numEve"));               
                eve.setDateEve(resultat.getString("dateEve"));                
                eve.setNomEve(resultat.getString("nomEve"));
                eve.setNoteEve(resultat.getInt("noteEve"));             
                eve.setheureDebutEve(resultat.getString("heureDebutEve"));           
                eve.setheureDebutEve(resultat.getString("dureeEve"));
                eve.setPlaceMaxEve(resultat.getInt("placeMaxEve"));
                eve.setNbrParticipant(resultat.getInt("nbrParticipant"));           

                arrayEvenement.add(eve);        // on stocke les données de chaque ligne dans la l'arrayList
                 
		
		}
	
		} catch (SQLException ex){           // meessage d'erreur si il y a un bug d
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