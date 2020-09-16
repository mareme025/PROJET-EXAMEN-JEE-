package sn.djokkjobproject.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;


@Entity
public class User implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length=100)
	private String email;
	@Column(length=100)
	private String nom;
	@Column(length=100)
	private String prenom;
	@Column(length=100)
	private String password;
	@ManyToMany
	private List<Demandeur> demandeur = new ArrayList<Demandeur>();
	@ManyToMany
	private List<Entreprise> entreprise = new ArrayList<Entreprise>();
	
	public User() {
		super();
	}

	

	public User(int id, String email, String nom, String prenom, String password, List<Demandeur> demandeur,
			List<Entreprise> entreprise) {
		super();
		this.id = id;
		this.email = email;
		this.nom = nom;
		this.prenom = prenom;
		this.password = password;
		this.demandeur = demandeur;
		this.entreprise = entreprise;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}



	public List<Demandeur> getDemandeur() {
		return demandeur;
	}



	public void setDemandeur(List<Demandeur> demandeur) {
		this.demandeur = demandeur;
	}

	public List<Entreprise> getEntreprise() {
		return entreprise;
	}



	public void setEntreprise(List<Entreprise> entreprise) {
		this.entreprise = entreprise;
	}

	
	

	
	
}
