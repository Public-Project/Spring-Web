package org.com.serviceImpl;

import java.util.HashMap;
import java.util.Map;

import org.com.dao.UserDao;
import org.com.model.User;
import org.com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	Map<String, Object> mapReturn = null;

	@Override
	public Map<String, Object> checkSavedUsers(User user) {
		mapReturn = new HashMap<>();
		if (userDao.checkSavedUsers(user) != 0) {
			mapReturn.put("status", "true");
		} else {
			mapReturn.put("status", "false");
			mapReturn.put("reason", "Could not save value");
		}
		return mapReturn;
	}

}
