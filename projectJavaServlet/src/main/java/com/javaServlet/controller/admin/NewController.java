package com.javaServlet.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaServlet.constant.SystemConstant;
import com.javaServlet.model.NewModel;
import com.javaServlet.paging.PageRequest;
import com.javaServlet.paging.Pageble;
import com.javaServlet.service.ICategoryService;
import com.javaServlet.service.INewService;
import com.javaServlet.service.utils.FormUtil;
import com.javaServlet.sort.Sorter;

@WebServlet(urlPatterns = { "/admin-new" })
public class NewController extends HttpServlet {

	private static final long serialVersionUID = -3375291957727467452L;

	@Inject
	private INewService newSrevice;

	@Inject
	private ICategoryService categoryService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		NewModel model = FormUtil.toModel(NewModel.class, req);
		String view = "";
		if (model.getType().equals(SystemConstant.LIST)) {

			Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem(),
					new Sorter(model.getSortBy(), model.getSortName()));

			model.setListResult(newSrevice.findAll(pageble));
			model.setTotalItem(newSrevice.getTotalItem());
			model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
			view = "/views/admin/new/list.jsp";
		} else if (model.getType().equals(SystemConstant.EDIT)) {
			if (model.getId() != null) {
				model = newSrevice.findOne(model.getId());
			} else {

			}
			req.setAttribute("categories", categoryService.findAll());
			view = "/views/admin/new/edit.jsp";
		}
		req.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = req.getRequestDispatcher(view);
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
