package sn.djokkjobproject.dao;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import sn.djokkjobproject.entities.User;

@Stateless
public class UserImpl implements IUser
{
	@PersistenceContext(unitName="DjokkJobProjectEJB")
	private EntityManager em;

	@Override
	public User getLogin(String email, String password) {
		try 
		{
			return (User)em.createQuery("SELECT u FROM User u WHERE u.email=:em AND u.password =:pwd")
			.setParameter("em",email)
			.setParameter("pwd",password)
			.getSingleResult();
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return null;
		
		}
	}

	@Override
	public int add(User user) {
		try 
		{
			em.persist(user);
			return 1;   	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
		}	
	}

}
