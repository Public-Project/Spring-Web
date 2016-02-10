package org.com.daoImpl;

import org.com.dao.UserDao;
import org.com.model.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public int checkSavedUsers(User user) {
		user = (User) sessionFactory.getCurrentSession().get(User.class, user.getId());
		return user.getId();
	}

}
