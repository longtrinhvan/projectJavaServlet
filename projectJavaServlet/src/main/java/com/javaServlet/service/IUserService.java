package com.javaServlet.service;

import com.javaServlet.model.UserModel;

public interface IUserService {

	UserModel findByUserNameAndPasswordAndStatus(String userName, String password,Integer status);
}
