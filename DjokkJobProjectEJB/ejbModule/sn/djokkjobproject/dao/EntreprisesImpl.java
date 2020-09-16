package sn.djokkjobproject.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import sn.djokkjobproject.entities.Demandeur;
import sn.djokkjobproject.entities.Entreprise;
import sn.djokkjobproject.entities.OffreEmploi;

@Stateless
public class EntreprisesImpl implements IEntreprises
{
	@PersistenceContext(unitName="DjokkJobProjectEJB")
	private EntityManager em;

	@Override
	public int add(Entreprise entreprise) {
		try 
		{
			em.persist(entreprise);
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}	
	}

	@Override
	public int update(Entreprise entreprise) {
		try 
		{
			em.merge(entreprise);
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
			em.remove(em.find(Entreprise.class, id));
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}	
	}

	@Override
	public List<Entreprise> getAll() {
		try 
		{
			return em.createQuery("SELECT en FROM Entreprise en").getResultList();
			   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}	
	}

	@Override
	public Entreprise get(int id) {
		return em.find(Entreprise.class, id);
	}

	@Override
	public Entreprise getLogin(String email, String password) {
		try 
		{
			return (Entreprise)em.createQuery("SELECT en FROM Entreprise en WHERE en.email=:em AND en.password =:pwd")
			.setParameter("em",email)
			.setParameter("pwd",password)
			.getSingleResult();
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return null;
		
	}
	}

}
