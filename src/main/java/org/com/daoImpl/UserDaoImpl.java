package org.com.daoImpl;

import java.util.List;

import org.com.dao.UserDao;
import org.com.model.User;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<User> checkSavedUsers(String emailId, String password) {
		Query query = sessionFactory.getCurrentSession().createQuery("from User where emailId=:emailId and password=:password");
		query.setParameter("emailId", emailId);
		query.setParameter("password", password);
		List<User> userList= (List<User>)query.list();
		return userList;
	}

}
