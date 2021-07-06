<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*,java.util.*"%>
<%

// AFIN DE MANIPULER UN OBJET COLLABORATEUR ON LE CREE DANS UNE CLASSE A PART 

/*
* @author : Michel Mendi
* @version 1.0 - 01/07/2020
* Ce constructeur définit un équipement
* 
*/
final class Equipement {
	/*
	 **********************  VARIABLES  **************************
	 NumEquip			Entier 11 chiffres			Clé primaire	 	
	 dispoEquip			Entier
	 nomEquip			string 30 caracteres
	 totalEquip 		Entier 11		
	 dateEmprunt		date
	 heureEmprunt		time
	 numEmp				Entier 11
	 
	 ********************  CHAMPS DATES ***************************
	 dateRetour 		date
	 heureRetour		time
	 */

		private int NumEquip;
		private String nomEquip;
		private int dispoEquip;
		private int totalEquip;
		private String dateEmprunt;	
		private String heureEmprunt;
		private String dateRetour;	
		private String heureRetour;
		private int numEmp;
	


	public Equipement() {
		
	  this.NumEquip=0;
	  this.nomEquip="";
	  this.dispoEquip=0;
	  this.totalEquip=0;
	  this.dateEmprunt="";	
	  this.heureEmprunt="";
	  this.dateRetour="";	
	  this.heureRetour="";
	  this.numEmp=0;
		
		
	}
		// constructeur avec parametres
	public Equipement(String nomEquip, int dispoEquip, int totalEquip, String dateEmprunt, String heureEmprunt, String dateRetour, String heureRetour) {
			
	  this.NumEquip=0;
	  this.nomEquip=nomEquip;
	  this.dispoEquip=dispoEquip;
	  this.totalEquip=totalEquip;
	  this.dateEmprunt=dateEmprunt;	
	  this.heureEmprunt=heureEmprunt;
	  this.dateRetour=dateRetour;	
	  this.heureRetour=heureRetour;
	  this.numEmp=numEmp;
		
	}

	public int getNumEquip() {
		return NumEquip;
	}

	public void setNumEquip(int numEquip) {
		NumEquip = numEquip;
	}

	public String getNomEquip() {
		return nomEquip;
	}

	public void setNomEquip(String nomEquip) {
		this.nomEquip = nomEquip;
	}

	public int isDispoEquip() {
		return dispoEquip;
	}

	public void setDispoEquip(int dispoEquip) {
		this.dispoEquip = dispoEquip;
	}

	public int getTotalEquip() {
		return totalEquip;
	}

	public void setTotalEquip(int totalEquip) {
		this.totalEquip = totalEquip;
	}

	public String getDateEmprunt() {
		return dateEmprunt;
	}

	public void setDateEmprunt(String dateEmprunt) {
		this.dateEmprunt = dateEmprunt;
	}

	public String getHeureEmprunt() {
		return heureEmprunt;
	}

	public void setHeureEmprunt(String heureEmprunt) {
		this.heureEmprunt = heureEmprunt;
	}

	public String getDateRetour() {
		return dateRetour;
	}

	public void setDateRetour(String dateRetour) {
		this.dateRetour = dateRetour;
	}

	public String getHeureRetour() {
		return heureRetour;
	}

	public void setHeureRetour(String heureRetour) {
		this.heureRetour = heureRetour;
	}

	public int getNumEmp() {
		return numEmp;
	}

	public void setNumEmp(int numEmp) {
		this.numEmp = numEmp;
	}
}
%>