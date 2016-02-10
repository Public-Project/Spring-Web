package org.com.service;

import java.util.Map;

public interface UserService {
	public Map<String,Object> checkSavedUsers(String emailId,String Password);
}
