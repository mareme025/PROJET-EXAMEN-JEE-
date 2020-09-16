package sn.djokkjobproject.dao;

import java.util.List;

import javax.ejb.Local;

import sn.djokkjobproject.entities.OffreEmploi;


@Local
public interface IOffreEmploi 
{
	public int add(OffreEmploi offreemploi);
	public int update(OffreEmploi offreemploi);
	public int delete(int id);
	public List<OffreEmploi> getAll();
	public OffreEmploi get(int id);

}
