package org.com.serviceImpl;

import java.util.HashMap;
import java.util.Map;

import org.com.constants.AppConstants;
import org.com.dao.RegisterDao;
import org.com.model.User;
import org.com.service.RegisterService;
import org.com.util.EmailEngine;
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
		int userId = registerUserDao.registerUser(user);
		if (userId != 0) {
			mapReturn.put(AppConstants.STATUS, true);
			EmailEngine.sendMail(user.getEmailId(), AppConstants.ACTIVATION_MAIL + userId);
		} else {
			mapReturn.put(AppConstants.STATUS, false);
			mapReturn.put(AppConstants.REASON, "Unable to registered");
		}
		return mapReturn;
	}

}
