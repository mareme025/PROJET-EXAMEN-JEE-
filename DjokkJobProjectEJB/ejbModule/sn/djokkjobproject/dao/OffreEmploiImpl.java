package sn.djokkjobproject.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import sn.djokkjobproject.entities.OffreEmploi;


@Stateless
public class OffreEmploiImpl implements IOffreEmploi
{
	@PersistenceContext(unitName="DjokkJobProjectEJB")
	private EntityManager em;

	@Override
	public int add(OffreEmploi offreemploi) {
		try 
		{
			em.persist(offreemploi);
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}		
	}

	@Override
	public int update(OffreEmploi offreemploi) {
		try 
		{
			em.merge(offreemploi);
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
			em.remove(id);
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}	
	}

	@Override
	public List<OffreEmploi> getAll() {
		try 
		{
			return em.createQuery("SELECT o FROM OffreEmploi o").getResultList();
			   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}	
	}

	@Override
	public OffreEmploi get(int id) {
		return em.find(OffreEmploi.class, id);
	}

}
