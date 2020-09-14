package com.javaServlet.service;

import java.util.List;

import com.javaServlet.model.NewModel;
import com.javaServlet.paging.Pageble;

public interface INewService {

	List<NewModel> findBycategoryId(Long categoryId);

	NewModel save(NewModel newModel);

	NewModel update(NewModel updateNew);

	void delete(long[] ids);

	List<NewModel> findAll(Pageble pageble);

	int getTotalItem();

	NewModel findOne(long id);
}
