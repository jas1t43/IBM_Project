package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DataDao;
import com.google.gson.Gson;

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
ArrayList<String> finalList=new  ArrayList<String>();
int no=0;	
response.setContentType("application/json");
		try {
			String term = request.getParameter("term");
			System.out.println(" Data from ajax call " + term);

			DataDao dataDao = new DataDao();
			ArrayList<String> list = dataDao.getFrameWork(term);
for(String a:list){
	if(no<=10){
		finalList.add(a);
		++no;
	}else{
		break;
	}
}
			
			String searchList = new Gson().toJson(finalList);
			response.getWriter().write(searchList);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
