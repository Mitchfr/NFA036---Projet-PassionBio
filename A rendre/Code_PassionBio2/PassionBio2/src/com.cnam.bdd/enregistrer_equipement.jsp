<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*"%>
<%@page import="java.util.ArrayList"%>
<%@include file="./connexionBDD.jsp"%> 
<%@include file="../com.cnam.constructeurs/equipement.jsp"%>
<%@include file="../com.cnam.constructeurs/evenement.jsp"%> 
<%
        // Instanciation d'un arrayList afin de stocker les information avant ecriture sur la BDD
    ArrayList<Equipement> arrayEquipement = new  ArrayList<Equipement>();

			// on recupère les informations saisies dans le formulaire
	String nom_equip = request.getParameter("nomEquip");
	String dateEmprunt_equip = request.getParameter("dateEmprunt");
	String heureEmprunt_equip = request.getParameter("heureEmprunt");
    String dateRetour_equip = request.getParameter("dateRetour");
	String heureRetour_equip = request.getParameter("heureRetour");
    int  nbEmprunt_equip = Integer.parseInt(request.getParameter("nbrEmpruntEquip"));    	
    int  dispoEquip=1;
    int totalEquip = 25;
   

    // Création d'un événement construit avec les données du formulaire
    Equipement equipement = new Equipement(nom_equip, dispoEquip, totalEquip, dateEmprunt_equip, heureEmprunt_equip, dateRetour_equip, heureRetour_equip);
                                
                // ajout de l'équipement dans l'arrayList 'arrayEquipement'
        arrayEquipement.add(equipement);
             
        Statement instruction = conn.createStatement();

    try{     // pour gérer les erreurs
             // Boucle For Each qui permet de vérifier si un événement du même nom est créé   
        for(Equipement equipe: arrayEquipement){
                ResultSet resultat = instruction.executeQuery("SELECT COUNT(nomEquip) nbEquip FROM equipement WHERE nomEquip='"+nom_equip+"'");    //compte le nombre de champ 'nomEquip'
                resultat.next();        
                int nbEquip =(resultat.getInt("nbEquip"));        // nombre de champs identique 'nomEquip' trouvé
             
        

            if (nbEquip<1){                                                 // si le nombre de 'nomEve' est inférieur à 1 c'est qu'il n'y en a pas de créé
                    
                    // Insertion des données du formulaire de saisie de création d'un événement dans la BDD
                int nb = instruction.executeUpdate("INSERT INTO equipement(nomEquip,dispoEquip,totalEquip,dateEmprunt,heureEmprunt,dateRetour,heureRetour,numEmp)"+
                "VALUES('"+nom_equip+"','"+dispoEquip+"','"+totalEquip+"','"+dateEmprunt_equip+"','"+heureEmprunt_equip+"','"+dateRetour_equip+"','"+heureRetour_equip+"','"+nbEmprunt_equip+"')");
                
                            // message pour informer  que l'enregistrement est ok
                out.println("<h2>BRAVO l'enregistrement à été ajouté</h2>");
            }
            else{
                          // message pour informer  que l'enregistrement est HS
                out.println("Ajout impossible car le nom de l'événement existe déjà");
            }
        }
    }

    catch (Exception e){        //message d'erreur générique
        out.println(e);
        out.println("Il y a un problème avec la base de donnée, l'écriture est inpossible");
    }
    finally{
        instruction.close();
    }

%>
     
