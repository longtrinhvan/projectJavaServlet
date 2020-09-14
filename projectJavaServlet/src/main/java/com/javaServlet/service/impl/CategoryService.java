package com.javaServlet.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.javaServlet.dao.ICategoryDAO;
import com.javaServlet.model.CategoryModel;
import com.javaServlet.service.ICategoryService;

public class CategoryService implements ICategoryService {

	@Inject
	private ICategoryDAO categoryDao;

	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}
}
