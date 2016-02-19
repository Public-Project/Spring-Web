package org.com.service;

import java.util.Map;

import org.com.model.User;

public interface RegisterService {
	public Map<String, Object> registerUser(User user);
	
	public Map<String, Object> activateUser(User user);
}
