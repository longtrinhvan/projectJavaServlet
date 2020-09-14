package com.javaServlet.dao;

import com.javaServlet.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel> {
	UserModel findByUserNameAndPasswordAndStatus(String userName, String password,Integer status);

}
