<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@include url="http://localhost:8081/PassionBio2/src/com.cnam.bdd/connexionBDD.jsp"%> 			<!-- connexion à la BDD -->


            <%
                    
				Statement statement = conn.createStatement();
				String id = request.getParameter("id_reference");		// on recupère l'ID de la selection de l'utilisateur
				int numId = Integer.parseInt(id);						// convertie en numérique
		
				String requete = " SELECT * FROM evenement WHERE numEve = '"+numId+"'";			// requete pour trouver l'avenement choisit
				ResultSet resultat = statement.executeQuery(requete);
					// Tout le code de la boucle sert à recupérer les information de modification
					// saisie par l'utilisateutr 
				while(resultat.next()) {					%>
				
					<input type="hidden" name="id" value='<%=resultat.getString("numEve")%>'/>
						<!-- NOM EVENEMENT-->
					<!-- La valeur de l'attribut "name" correspond au nom du champs que l'on utilisera afin
						modifier la valeur -->
						<div class="form-group">
							<label class="col-md-4 control-label"><%=resultat.getString("nomEve") %></label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
								
								
								<!-- "resultat.getString("nom")" permet de r�cup�rer la valeur de nom depuis la bdd -->
								
								
									<input name="nom"  value='<%=resultat.getString("nomEve") %>' class="form-control"
										type="text"  >
								</div>
							</div>
						</div>

						<!-- DATE DE L'EVENEMENT -->

						<div class="form-group">
							<label class="col-md-4 control-label"><%=resultat.getString("date") %></label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<input name="date"  value='<%=resultat.getString("dateEve") %>' class="form-control"
										type="text" >
								</div>
							</div>
						</div>

						<!-- NOTE EVENEMENT -->
						<div class="form-group">
							<label class="col-md-4 control-label"><%=resultat.getString("note") %></label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<input name="note"  value='<%=resultat.getString("noteEve") %>' class="form-control"
										type="text" >
								</div>
							</div>
						</div>


						<!-- HEURE DE DEBUT -->

						<div class="form-group">
							<label class="col-md-4 control-label"><%=resultat.getString("dateDebut") %></label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<input name="dateDebut"  value='<%=resultat.getString("heureDebutEve") %>'
										class="form-control" type="date" min="1900-01-01" max="2030-12-31" required>
								</div>
							</div>
						</div>

					<!-- DUREE EVENEMENT -->

						<div class="form-group">
							<label class="col-md-4 control-label"><%=resultat.getString("dureeEve") %></label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<input name="dureeEve"  value='<%=resultat.getString("dureeEve") %>'
										class="form-control" type="date" min="2000-01-01" max="2030-12-31"  required>
								</div>
							</div>
						</div>




					<!-- PLACE MAX EVENEMENT -->

						<div class="form-group">
							<label class="col-md-4 control-label"><%=resultat.getString("placeMax") %></label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<input name="placeMax"  value='<%=resultat.getString("placeMaxEve") %>'
										class="form-control" type="date" min="2000-01-01" max="2030-12-31" required>
								</div>
							</div>
						</div>

						<!-- NOMBRE DE PARTICIPANT -->

						<div class="form-group">
							<label class="col-md-4 control-label"><%=resultat.getString("nbrParticipant") %></label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<input name="nbrParticipant"  value='<%=resultat.getString("nbrParticipant") %>' class="form-control"
										type="text" >
								</div>
							</div>
						</div>
						

						<!-- Bouton de validation -->
						<div class="form-group">
							<label class="col-md-4 control-label"></label>
							<div class="col-md-4">
								<br>
								<button type="submit" class="btn btn-dark">Modifier Evenement</button>
							</div>
						</div>

	

				</fieldset>
			</form>
		</div>
		</div>
		<!-- /.container -->
<button type="button" class="btn btn-outline-light">
				<a class="nav-link"
			href="/accueil.jsp">Revenir en arriere <span
				class="sr-only">(current)</span></a>
</button>
	</center>







	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
<%
// ON RECUPERE LA VALEUR DE CHAQUE CHAMPS QUE L'ON STOCK DANS UNE VARIABLE
String a,b,c,d,e,f,g;

/*
a = Integer.parseInt(request.getParameter("id"));
  

String dateEvenement = resultat.getString("dateEve");
c = dateEvenement;

String nomEvenement = resultat.getString("nomEve");
b = nomEvenement;

int noteEvenement = resultat.getInt("noteEve");
String convNote=String.valueOf(noteEvenement);
d = convNote; 

String  heureDebutEvevenement = resultat.getString("heureDebutEve");
e = heureDebutEvevenement;

int dureeEvenement = Integer.parseInt(resultat.getString("dureeEve"));
String convDuree=String.valueOf(dureeEvenement);
f = convDuree;

int placeMaxEvenement = resultat.getInt("placeMaxEve");
String convPlace=String.valueOf(placeMaxEvenement);
g = convPlace;

int nbrParticipantnement = resultat.getInt("nbrParticipant");
String convPaticipant = String.valueOf(nbrParticipantnement);
h = convPaticipant;
*/

a = request.getParameter("nom");
b = request.getParameter("date");
c = request.getParameter("note");
d = request.getParameter("dateDebut");
e = request.getParameter("dureeEve");
f = request.getParameter("placeMax");
g = request.getParameter("nbrParticipant");



// SI TOUTES LES VARIABLES NE SONT PAS NULL
// ALORS ON REMPLACE DANS LA BDD LA VALEUR CONTENU DANS LE CHAMPS AU MOMENT DE LA VALIDATION
if(a != null && b!= null && c!=  null && d != null && e != null && f != null && g!= null) {
	// REQUETE SQL 
/*
nom
date
note
dateDebut
dureeEve
placeMax
nbrParticipant
*/
    String req = "update evenement set nom=?, date=?, note=?, dateDebut=?, dureeEve=?, placeMax=?, nbrParticipant=? where id='"+a+"'";
	ps = conn.prepareStatement(req);
	ps.setString(1, a);
	ps.setString(2, b);
	ps.setString(3, c);
	ps.setString(4, d);
	ps.setString(5, e);
    ps.setString(6, f);
    ps.setString(7, g);

	// ON EXECUTE LA REQUETE
	ps.executeUpdate();
	// ON REDIRIGE VERS LA PAGE D'ACCEUIL
	response.sendRedirect("/accueil.jsp");
}
%>