package sn.djokkjobproject.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import sn.djokkjobproject.entities.Demandeur;
import sn.djokkjobproject.entities.OffreEmploi;
import sn.djokkjobproject.entities.User;

@Stateless
public class DemandeurImpl implements IDemandeur
{
	@PersistenceContext(unitName="DjokkJobProjectEJB")
	private EntityManager em;

	@Override
	public int add(Demandeur demandeur) {
		try 
		{
			em.persist(demandeur);
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}		
	}

	@Override
	public int update(Demandeur demandeur) {
		try 
		{
			em.merge(demandeur);
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}
	}

	@Override
	public int delete(int id) {
		try 
		{
			em.remove(em.find(Demandeur.class, id));
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}	
	}

	@Override
	public List<Demandeur> getAll() {
		try 
		{
			return em.createQuery("SELECT d FROM Demandeur d").getResultList();
			   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}	
	}

	@Override
	public Demandeur get(int id) {
		return em.find(Demandeur.class, id);
	}

	@Override
	public Demandeur getLogin(String email, String password) {
		try 
		{
			return (Demandeur)em.createQuery("SELECT d FROM Demandeur d WHERE d.email=:em AND d.password =:pwd")
			.setParameter("em",email)
			.setParameter("pwd",password)
			.getSingleResult();
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return null;
		
	}
	}

}
