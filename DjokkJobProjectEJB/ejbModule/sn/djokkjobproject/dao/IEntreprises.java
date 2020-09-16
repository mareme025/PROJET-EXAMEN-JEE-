package sn.djokkjobproject.dao;

import java.util.List;

import sn.djokkjobproject.entities.Entreprise;

public interface IEntreprises 
{
	public int add(Entreprise entreprise);
	public int update(Entreprise entreprise);
	public int delete(int id);
	public List<Entreprise> getAll();
	public Entreprise get(int id);
	public Entreprise getLogin(String email, String password);

}
