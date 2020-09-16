package sn.djokkjobproject.dao;

import javax.ejb.Local;

import sn.djokkjobproject.entities.User;

@Local
public interface IUser 
{
	public User getLogin(String email, String password);
	public int add(User user);

}
