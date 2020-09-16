package sn.djokkjobproject.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import sn.djokkjobproject.entities.CVEtudiant;
import sn.djokkjobproject.entities.Demandeur;

@Stateless
public class CVEtudiantImpl implements ICVEtudiant
{
	@PersistenceContext(unitName="DjokkJobProjectEJB")
	private EntityManager em;

	@Override
	public int add(CVEtudiant cvetudiant) {
		try 
		{
			em.persist(cvetudiant);
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}	
	}

	@Override
	public int update(CVEtudiant cvetudiant) {
		try 
		{
			em.merge(cvetudiant);
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<CVEtudiant> getAll() {
		try 
		{
			return em.createQuery("SELECT cv FROM CVEtudiant cv").getResultList();
			   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}	
	}

	@Override
	public CVEtudiant get(int id) {
		return em.find(CVEtudiant.class, id);
	}

	@Override
	public int delete(int id) {
		try 
		{
			em.remove(em.find(CVEtudiant.class, id));
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}	
	}

}
