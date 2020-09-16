package sn.djokkjobproject.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class CVEtudiant implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length=30)
	private String nom;
	@Column(length=30)
	private String prenom;
	@Column(length=300)
	private String email;
	@Column(length=300)
	private String adresse;
	@Column(length=300)
	private String specialite;
	@Column(length=300)
	private String telephone;
	@Column(length=300)
	private String niveauEtude;
	@Column(length=3000)
	private String experiencePro;
	@ManyToOne
	private Entreprise entreprise = new Entreprise();
	@ManyToOne
	private OffreEmploi offreemploi = new OffreEmploi();
	
	public CVEtudiant() {
		super();
	}


	

	public CVEtudiant(int id, String nom, String prenom, String email, String adresse, String specialite,
			String telephone, String niveauEtude, String experiencePro, Entreprise entreprise,
			OffreEmploi offreemploi) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.adresse = adresse;
		this.specialite = specialite;
		this.telephone = telephone;
		this.niveauEtude = niveauEtude;
		this.experiencePro = experiencePro;
		this.entreprise = entreprise;
		this.offreemploi = offreemploi;
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

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getspecialite() {
		return specialite;
	}

	public void setspecialite(String specialite) {
		this.specialite = specialite;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getNiveauEtude() {
		return niveauEtude;
	}

	public void setNiveauEtude(String niveauEtude) {
		this.niveauEtude = niveauEtude;
	}

	public String getExperiencePro() {
		return experiencePro;
	}

	public void setExperiencePro(String experiencePro) {
		this.experiencePro = experiencePro;
	}

	public Entreprise getEntreprise() {
		return entreprise;
	}

	public void setEntreprise(Entreprise entreprise) {
		this.entreprise = entreprise;
	}


	public String getSpecialite() {
		return specialite;
	}

	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}

	public OffreEmploi getOffreemploi() {
		return offreemploi;
	}


	public void setOffreemploi(OffreEmploi offreemploi) {
		this.offreemploi = offreemploi;
	}
	
	
}
