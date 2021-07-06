<%@include file="../../src/com.cnam.bdd/connexionBDD.jsp"%>             <!-- Appel connexion à la BDD-->
<%@include file="../../src/com.cnam.constructeurs/equipement.jsp"%>     <!-- Appel du constructeur 'equipement'-->
<%@include file="../../src/com.cnam.constructeurs/evenement.jsp"%>      <!-- Appel du constructeur 'evenement-->
<%@include file="../../WebContent/com.cnam.affichages/entete.jsp"%>     <!-- affichage du header-->
<%@include file="../../src/com.cnam.bdd/lire_bdd.jsp"%>

<!-- Affichage de la liste des événement et  équipements-->
<div class="alert alert-primary" role="alert" align="center">
  EVENEMENTS
</div>


<div class="container" style="margin-top:30px">
  <%@include file="../../WebContent/com.cnam.affichages/afficheListeEvenements.jsp"%> 
</div>

</div>
<div class="alert alert-primary" role="alert" align="center">
  EQUIPEMENTS
</div>

<div class="container" style="margin-top:30px">
  <%@include file="../../WebContent/com.cnam.affichages/afficheListeEquipement.jsp"%> 
</div>                 
       
</body>
</html>


















