package sn.djokkjobproject.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;



@Entity
public class OffreEmploi implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length=30)
	private String nomOffre;
	@Column(length=300)
	private String typeOffre;
	@Column(length=3000)
	private String description;
	@ManyToOne
	private Entreprise entreprise = new Entreprise();
	@ManyToOne
	private ProfilRecherche profilrecherche = new ProfilRecherche();
	@OneToMany(mappedBy="offreemploi")
	private List<CVEtudiant> cvetudiant = new ArrayList<CVEtudiant>();
	
	
	public OffreEmploi(int id, String nomOffre, String typeOffre, String description, Entreprise entreprise,
			ProfilRecherche profilrecherche, List<CVEtudiant> cvetudiant) {
		super();
		this.id = id;
		this.nomOffre = nomOffre;
		this.typeOffre = typeOffre;
		this.description = description;
		this.entreprise = entreprise;
		this.profilrecherche = profilrecherche;
		this.cvetudiant = cvetudiant;
	}

	public OffreEmploi() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomOffre() {
		return nomOffre;
	}

	public void setNomOffre(String nomOffre) {
		this.nomOffre = nomOffre;
	}

	public String getTypeOffre() {
		return typeOffre;
	}

	public void setTypeOffre(String typeOffre) {
		this.typeOffre = typeOffre;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Entreprise getEntreprise() {
		return entreprise;
	}

	public void setEntreprise(Entreprise entreprise) {
		this.entreprise = entreprise;
	}

	public ProfilRecherche getProfilrecherche() {
		return profilrecherche;
	}

	public void setProfilrecherche(ProfilRecherche profilrecherche) {
		this.profilrecherche = profilrecherche;
	}

	public List<CVEtudiant> getCvetudiant() {
		return cvetudiant;
	}

	public void setCvetudiant(List<CVEtudiant> cvetudiant) {
		this.cvetudiant = cvetudiant;
	}

	
	
}
