<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" pageEncoding="UTF-8" errorPage="" %>
<%@page import="java.time.*,java.util.*"%>
<%
// AFIN DE MANIPULER UN OBJET COLLABORATEUR ON LE CREE DANS UNE CLASSE A PART 

/*
* @author : Michel Mendi
* @version 1.0 - 06/05/20
* Ce constructeur définit un événement
* 
*/
final  class Evenement {
	
	/*
	 **********************  VARIABLES  **************************
	 NumEve				Entier 6 chiffres			Clé primaire	 	
	 nomEve				20 carac					Nul interdit
	 noteEve			Entier 1 chiffres		 	Valeurs entre 1 et 5
	 dureeEve 			ADDDATE() ou TIME()			Nul interdit
	 placeMaxEve		Entier 2 chiffres			Nul interdi
	 nbrParticipant		Entier 2 chiffres			0 par défaut
	 
	 ********************  CHAMPS DATES ***************************
	 dateEve (D) => 	TIMESTAMP					Nul interdit (par defautNOW())
	 heureDebutEve (N)	TIME()						Nul interdit
	 */

	private int NumEve;
	

	private String nomEve;
	private String dateEve;
	private int noteEve;
	private String heureDebutEve;
	private int dureeEve;	
	private int placeMaxEve;
	private int nbrParticipant;
	private int id_eve;


	public Evenement() {
		this.NumEve = 0;
		this.nomEve = "";
		this.dateEve = "";
		this.noteEve = 0;
		this.heureDebutEve="";
		this.dureeEve = 0;
		this.placeMaxEve = 0;
		this.nbrParticipant = 0;
		
	}
	
	public Evenement(String nomEve, int noteEve, int dureeEve, int placeMaxEve, int nbrParticipant ) {
			
		this.nomEve = nomEve;
		this.dateEve = dateEve;
		this.noteEve = noteEve;
		this.heureDebutEve = heureDebutEve;
		this.dureeEve = dureeEve;
		this.placeMaxEve = placeMaxEve;
		this.nbrParticipant = nbrParticipant;
		
	}

	public int getNumEve() {
		return NumEve;
	}

	public void setNumEve(int numEve) {
		NumEve = numEve;
	}

	public String getDateEve() {
		return dateEve;
	}

	public void setDateEve(String dateEve) {
		this.dateEve = dateEve;
	}

	public String getNomEve() {
		return nomEve;
	}

	public void setNomEve(String nomEve) {
		this.nomEve = nomEve;
	}

	public int getNoteEve() {
		return noteEve;
	}

	public void setNoteEve(int noteEve) {
		this.noteEve = noteEve;
	}

	public String getheureDebutEve() {
		return heureDebutEve;
	}

	public void setheureDebutEve(String heureDebutEve) {
		this.heureDebutEve = heureDebutEve;
	}

	public int getDureeEve() {
		return dureeEve;
	}

	public void setDureeEve(int dureeEve) {
		this.dureeEve = dureeEve;
	}

	public int getPlaceMaxEve() {
		return placeMaxEve;
	}

	public void setPlaceMaxEve(int placeMaxEve) {
		this.placeMaxEve = placeMaxEve;
	}

	public int getNbrParticipant() {
		return nbrParticipant;
	}

	public void setNbrParticipant(int nbrParticipant) {
		this.nbrParticipant = nbrParticipant;
	}

}
%>