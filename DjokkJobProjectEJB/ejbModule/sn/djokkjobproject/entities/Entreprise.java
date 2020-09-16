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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;



@Entity
public class Entreprise implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length=30)
	private String nom;
	@Column(length=30)
	private String prenom;
	@Column(length=30)
	private String NINEA;
	@Column(length=30)
	private String emplacement;
	@Column(length=30)
	private String email;
	@Column(length=30)
	private String password;
	@OneToMany(mappedBy="entreprise")
	private List<OffreEmploi> offreemploi = new ArrayList<OffreEmploi>();
	@OneToMany(mappedBy="entreprise")
	private List<CVEtudiant> cvetudiant = new ArrayList<CVEtudiant>();
	@ManyToMany
	private List<User> user = new ArrayList<User>();
	
	
	public Entreprise() {
		super();
	}



	public Entreprise(int id, String nom, String prenom, String nINEA, String emplacement, String email,
			String password, List<OffreEmploi> offreemploi, List<CVEtudiant> cvetudiant, List<User> user) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		NINEA = nINEA;
		this.emplacement = emplacement;
		this.email = email;
		this.password = password;
		this.offreemploi = offreemploi;
		this.cvetudiant = cvetudiant;
		this.user = user;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getNINEA() {
		return NINEA;
	}

	public void setNINEA(String nINEA) {
		NINEA = nINEA;
	}

	public String getEmplacement() {
		return emplacement;
	}

	public void setEmplacement(String emplacement) {
		this.emplacement = emplacement;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<OffreEmploi> getOffreemploi() {
		return offreemploi;
	}

	public void setOffreemploi(List<OffreEmploi> offreemploi) {
		this.offreemploi = offreemploi;
	}

	public List<CVEtudiant> getCvetudiant() {
		return cvetudiant;
	}

	public void setCvetudiant(List<CVEtudiant> cvetudiant) {
		this.cvetudiant = cvetudiant;
	}

	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
	}



	public String getPrenom() {
		return prenom;
	}



	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	

}
