<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*"%>


<%@include file="../../WebContent/com.cnam.affichages/entete.jsp"%>   <!-- header-->
<div class="container" style="margin-top:30px">
          <!--creation du formulaire de saisie qui redirige vers la page 'enregistrer_equipement.jsp' -->
        <form class="form-horizontal" action="/PassionBio2/src/com.cnam.bdd/enregistrer_equipement.jsp" method="post" name="ajout_equipement" name="add_equipement">
       
            <fieldset>

                 <!-- Formulaire équipement -->
                <legend>Création d'équipement</legend>

                <!-- Input pour le  Nom-->
                <div class="form-group">
                <label class="col-md-4 control-label" for="nomEquip">Nom</label>  
                <div class="col-md-4">
                <input id="nomEquip " name="nomEquip" type="text" placeholder="Nom de l'équipement" class="form-control input-md" required="">
                    
                </div>
                </div>

                <!--  Input pour la date d'emprûnt-->
                <div class="form-group">
                <label class="col-md-4 control-label" for="dateEmprunt">Date d'emprûnt</label>  
                <div class="col-md-3">
                <input id="dateEmprunt" name="dateEmprunt" type="date" placeholder="Date d'emprunt" class="form-control input-md" required="">
                </div>
                
                 <!--  Input pour la date d'emprûnt-->
                <div class="form-group">
                <label class="col-md-4 control-label" for="heureEmprunt">Heure d'emprunt</label>  
                <div class="col-md-4">
                <input id="heureEmprunt" name="heureEmprunt" type="text" placeholder="Heure d'emprunt" class="form-control input-md" required="">
                </div>

                  <!--  Input pour la date de retour -->
                <div class="form-group">
                <label class="col-md-4 control-label" for="dateRetour">Date de retour</label>  
                <div class="col-md-3">
                <input id="dateRetour" name="dateRetour" type="date" placeholder="Date de retour " class="form-control input-md" required="">
                    
                </div>

                   <!--  Input pour l'heure de retour -->
                <div class="form-group">
                <label class="col-md-4 control-label" for="heureRetour">Heure de retour</label>  
                <div class="col-md-2">
                <input id="heureRetour" name="heureRetour" type="text" placeholder="Heure retour" class="form-control input-md" required="">
                    
                </div>

                    <!--  Input pour la quantité emprûnté -->
                <div class="form-group">
                <label class="col-md-4 control-label" for="nbrEmpruntEquip">Nombre d'emprûnt</label>  
                <div class="col-md-2">
                <input id="nbrEmpruntEquip" name="nbrEmpruntEquip" type="number" placeholder="Nombre" class="form-control input-md" required="">
                    
                </div>
          


                <!-- Buttons -->
                <div class="form-group">
                <label class="col-md-4 control-label" for="button_crea_equip_ok"></label>
                <div class="col-md-8">
                    <button id="button_crea_equip_ok" name="button_crea_equip_ok" class="btn btn-success">Valider</button>         <!-- Validation du formulaire -->
                    <button id="button_crea_equip_reset" name="button_crea_equip_reset" class="btn btn-danger">Effacer</button>     <!-- Effacer le formulaire -->
                </div>

            </fieldset>
        </form>
        </div>

   
       
        </fieldset>
        </form>
    </div>
 
       
  </body>
  </html> 

