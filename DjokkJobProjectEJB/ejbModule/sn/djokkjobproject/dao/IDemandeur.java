package sn.djokkjobproject.dao;

import java.util.List;

import javax.ejb.Local;

import sn.djokkjobproject.entities.Demandeur;
import sn.djokkjobproject.entities.User;

@Local
public interface IDemandeur 
{
	public int add(Demandeur demandeur);
	public int update(Demandeur demandeur);
	public int delete(int id);
	public List<Demandeur> getAll();
	public Demandeur get(int id);
	public Demandeur getLogin(String email, String password);

}
