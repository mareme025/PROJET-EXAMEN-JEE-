package sn.djokkjobproject.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class ProfilRecherche implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(length=30)
	private String nomProfil;
	@OneToMany(mappedBy="entreprise")
	private List<OffreEmploi> offreemploi = new ArrayList<OffreEmploi>();
	
	
	public ProfilRecherche() {
		super();
	}


	public ProfilRecherche(int id, String nomProfil, List<OffreEmploi> offreemploi) {
		super();
		this.id = id;
		this.nomProfil = nomProfil;
		this.offreemploi = offreemploi;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getNomProfil() {
		return nomProfil;
	}



	public void setNomProfil(String nomProfil) {
		this.nomProfil = nomProfil;
	}



	public List<OffreEmploi> getOffreemploi() {
		return offreemploi;
	}

	public void setOffreemploi(List<OffreEmploi> offreemploi) {
		this.offreemploi = offreemploi;
	}

	
	
}
