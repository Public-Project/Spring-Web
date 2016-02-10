package org.com.service;

import java.util.Map;

import org.com.model.User;

public interface UserService {
	public Map<String,Object> checkSavedUsers(User user);
}
