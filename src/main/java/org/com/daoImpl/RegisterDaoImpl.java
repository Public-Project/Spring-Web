package org.com.daoImpl;

import org.com.dao.RegisterDao;
import org.com.model.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class RegisterDaoImpl implements RegisterDao{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int registerUser(User user) {
		sessionFactory.getCurrentSession().save(user);
		return user.getId();
	}

	@Override
	public void unregisterUser(User user) {
		// TODO Auto-generated method stub
		
	}
	
	
	

}
