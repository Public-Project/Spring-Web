package org.com.serviceImpl;

import java.util.HashMap;
import java.util.Map;

import org.com.dao.RegisterDao;
import org.com.model.User;
import org.com.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	RegisterDao registerUserDao;
	
	Map<String, Object> mapReturn = null;

	@Override
	public Map<String, Object> registerUser(User user) {
		mapReturn = new HashMap<>();
		if(registerUserDao.registerUser(user) != 0){
			mapReturn.put("status", "true");
		} else {
			mapReturn.put("status", "false");
			mapReturn.put("reason", "User is not registered");
		}
		return mapReturn;
	}

}
