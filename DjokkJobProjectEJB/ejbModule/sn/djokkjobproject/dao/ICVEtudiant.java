package sn.djokkjobproject.dao;

import java.util.List;

import javax.ejb.Local;

import sn.djokkjobproject.entities.CVEtudiant;

@Local
public interface ICVEtudiant 
{
	public int add(CVEtudiant cvetudiant);
	public int update(CVEtudiant cvetudiant);
	public List<CVEtudiant> getAll();
	public int delete(int id);
	public CVEtudiant get(int id);

}
