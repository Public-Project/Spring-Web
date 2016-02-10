package org.com.dao;

import org.com.model.User;

public interface RegisterDao {

	public int registerUser(User user);

	public void unregisterUser(User user);

}
