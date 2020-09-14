package com.javaServlet.service.impl;

import javax.inject.Inject;

import com.javaServlet.dao.IUserDAO;
import com.javaServlet.model.UserModel;
import com.javaServlet.service.IUserService;

public class UserService implements IUserService{

	
	@Inject
	private IUserDAO userDAO;
	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		return userDAO.findByUserNameAndPasswordAndStatus(userName, password, status);
	}

}
