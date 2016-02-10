package org.com.serviceImpl;

import org.com.dao.RegisterDao;
import org.com.model.User;
import org.com.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	RegisterDao registerUser;

	@Override
	public int registerUser(User user) {
		return registerUser.registerUser(user);
	}

}
