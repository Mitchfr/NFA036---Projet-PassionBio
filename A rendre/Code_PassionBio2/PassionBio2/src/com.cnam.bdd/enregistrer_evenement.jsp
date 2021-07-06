<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*"%>
<%@page import="java.util.ArrayList"%>


<%@include file="./connexionBDD.jsp"%> 
<%@include file="../com.cnam.constructeurs/equipement.jsp"%>
<%@include file="../com.cnam.constructeurs/evenement.jsp"%>


<%
	ArrayList<Evenement> arrayEvenement = new  ArrayList<Evenement>();

			// on recupère les informations saisies dans le formulaire
	String nom_event = request.getParameter("nom_event");
	String date_event = request.getParameter("date_event");
	String heure_event = request.getParameter("heure_event");
	int duree_event = Integer.parseInt(request.getParameter("duree_event"));
	int  nbPlace_event =  Integer.parseInt(request.getParameter("nbPlace_event"));
    int noteEvent=15;
    int nbrParticipant = 8;
    int numEmp =25;

    // Création d'un événement
        Evenement eve = new Evenement(nom_event,1,duree_event,nbPlace_event,15);
                // ajout de l'evenement dans l'arrayList 'arrayEvenement'
        arrayEvenement.add(eve);

         
        Statement instruction = conn.createStatement();
    try{            // pour gerer les erreus
                    // Boucle For Each qui permet de vérifier si un événement du même nom est créé    
        for(Evenement elem: arrayEvenement){
                ResultSet resultat = instruction.executeQuery("SELECT COUNT(nomEve) nb_nomEve FROM evenement WHERE nomEve='"+nom_event+"'");    //compte le nombre de champ 'nomEve'
                resultat.next();        
                int nbEvent =(resultat.getInt("nb_nomEve"));        // nombre de champs identique 'nomEve' trouvé
               
        

            if (nbEvent<1){                                                 // si le nombre de 'nomEve' est inférieur à 1 c'est qu'il n'y en a pas de créé
                    
                    // Insertion des données du formulaire de saisie de création d'un événement dans la BDD
                int nb = instruction.executeUpdate("INSERT INTO evenement(dateEve,nomEve,noteEve,heureDebutEve,dureeEve,placeMaxEve,nbrParticipant,numEmp)"+
                "VALUES('"+date_event+"','"+nom_event+"','"+noteEvent+"','"+heure_event+"','"+duree_event+"','"+nbPlace_event+"','"+nbrParticipant+"','"+numEmp+"')");
                
                            // message pour informer que l'enregistrement est ok
                out.println("<h2>BRAVO l'enregistrement à été ajouté</h2>");
            }
            else{           // message pour informer que l'enregistrement est ok
                out.println("Ajout impossible car le nom de l'événement existe déjà");
            }
        }
    }

    catch (Exception e){                // message d'erreur générique
        out.println("Il y a un problème avec la base de donnée, l'écriture est inpossible");
    }
    finally{
        instruction.close();
    }

%>
     
