package org.com.daoImpl;

import org.com.dao.RegisterDao;
import org.com.model.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class RegisterDaoImpl implements RegisterDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int registerUser(User user) {
		user.setRegistered(true);
		sessionFactory.getCurrentSession().save(user);
		return user.getId();
	}

	@Override
	public void unregisterUser(User user) {
		user.setRegistered(false);
		sessionFactory.getCurrentSession().save(user);
	}

	@Override
	@Transactional
	public int activateUser(User user) {
		User savedUser = (User) sessionFactory.getCurrentSession().get(User.class, user.getId());
		savedUser.setPassword(user.getPassword());
		user.setActivated(true);
		sessionFactory.getCurrentSession().update(savedUser);
		return user.getId();
	}

}
