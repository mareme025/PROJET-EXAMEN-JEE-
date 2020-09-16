package sn.djokkjobproject.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import sn.djokkjobproject.entities.OffreEmploi;
import sn.djokkjobproject.entities.ProfilRecherche;

@Stateless
public class ProfilRechercheImpl implements IProfilRecherche
{
	@PersistenceContext(unitName="DjokkJobProjectEJB")
	private EntityManager em;

	@Override
	public int add(ProfilRecherche profilrecherche) {
		try 
		{
			em.persist(profilrecherche);
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}		
	}

	@Override
	public int update(ProfilRecherche profilrecherche) {
		try 
		{
			em.merge(profilrecherche);
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
	public List<ProfilRecherche> getAll() {
		try 
		{
			return em.createQuery("SELECT p FROM ProfilRecherche p").getResultList();
			   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}	
	}

	@Override
	public ProfilRecherche get(int id) {
		return em.find(ProfilRecherche.class, id);
	}

}
