package org.com.dao;

import java.util.List;

import org.com.model.User;

public interface UserDao {

	public List<User> checkSavedUsers(String emailId, String password);

}
