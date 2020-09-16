package sn.djokkjobproject.dao;

import java.util.List;

import javax.ejb.Local;

import sn.djokkjobproject.entities.ProfilRecherche;

@Local
public interface IProfilRecherche 
{
	public int add(ProfilRecherche profilrecherche);
	public int update(ProfilRecherche profilrecherche);
	public int delete(int id);
	public List<ProfilRecherche> getAll();
	public ProfilRecherche get(int id);

}
