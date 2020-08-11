package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.People;
import com.service.PeopleService;
import com.service.impl.PeopleServiceImpl;

@WebServlet(value = { "/show" })
public class ShowServlet extends HttpServlet {
	
	PeopleService peopleService = new PeopleServiceImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<People> list = peopleService.show();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}

}
