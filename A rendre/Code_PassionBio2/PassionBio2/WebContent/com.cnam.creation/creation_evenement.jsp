  <%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*"%>

<%@include file="../../src/com.cnam.constructeurs/evenement.jsp"%>

<%@include file="../../WebContent/com.cnam.affichages/entete.jsp"%>   <!-- header-->

  <div class="container" style="margin-top:30px">
          <!--creation du formulaire de saisie qui redirige vers la page '/enregistrer_evenement.jsp' -->
          <form class="form-horizontal" action="/PassionBio2/src/com.cnam.bdd/enregistrer_evenement.jsp" method="post" name="ajout_event" name="add_event">
        
              <fieldset>

                   <!-- Nom du formulaire -->
                  <legend>Création d'un événement</legend>

                  <!-- Nom de l'événement-->
                  <div class="form-group">
                  <label class="col-md-4 control-label" for="nom_event">Nom</label>  
                  <div class="col-md-4">
                  <input id="nom_event" name="nom_event" type="text" placeholder="Nom de l'événement" class="form-control input-md" required="">
                      
                  </div>
                  </div>

                  <!-- Date début de l'événement-->
                  <div class="form-group">
                  <label class="col-md-4 control-label" for="date_event">Date</label>  
                  <div class="col-md-3">
                  <input id="date_event" name="date_event" type="date" placeholder="Saisir la date" class="form-control input-md" required="">
                      
                  </div>
                  </div>

                  <!-- Heure  début de l'événement-->
                  <div class="form-group">
                  <label class="col-md-4 control-label" for="heure_event">Heure début</label>  
                  <div class="col-md-2">
                  <input id="heure_event" name="heure_event" type="text" placeholder="Saisir heure" class="form-control input-md" required="">
                      
                  </div>
                  </div>

                  <!-- Durée de l'événement-->
                  <div class="form-group">
                  <label class="col-md-4 control-label" for="duree_event">Durée</label>  
                  <div class="col-md-2">
                  <input id="duree_event" name="duree_event" type="text" placeholder="Saisir la durée " class="form-control input-md" required="">
                      
                  </div>
                  </div>

                  <!-- Nombre de place -->
                  <div class="form-group">
                  <label class="col-md-4 control-label" for="nbPlace_event">Nombre de places</label>  
                  <div class="col-md-2">
                  <input id="nbPlace_event" name="nbPlace_event" type="text" placeholder="Saisir nb places" class="form-control input-md" required="">
                      
                  </div>
                  </div>

                  <!-- Button validation et effacer -->
                  <div class="form-group">
                  <label class="col-md-4 control-label" for="button_crea_event_ok"></label>
                  <div class="col-md-8">
                      <button id="button_crea_event_ok" name="button_crea_event_ok" class="btn btn-success">Valider</button>
                      <button id="button_crea_event_reset" name="button_crea_event_reset" class="btn btn-danger">Effacer</button>
                  </div>
                  </div>

              </fieldset>
          </form>
  </div>


</body>
</html>



