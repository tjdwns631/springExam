package com.company.app.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired
	SungjunMapper1 dao;

	@RequestMapping(value = "/")
	public ModelAndView test(HttpServletResponse response) throws IOException {
		return new ModelAndView("main/home");
	}

	@RequestMapping(value = "/index")
	public ModelAndView test1(HttpServletResponse response) throws IOException {
		return new ModelAndView("index");
	}
	@RequestMapping(value = "/proinser")
	public ModelAndView test2(HttpServletResponse response,ProductVO product) throws IOException {
		return new ModelAndView("proinser");
	}
	@RequestMapping(value = "/proinsert")
	public ModelAndView test4(HttpServletResponse response,ProductVO product) throws IOException {
		dao.insertpro(product);
		return new ModelAndView("index");
	}
	@RequestMapping(value = "/select")
	public ModelAndView test3(HttpServletResponse response,ProductVO product,SaleVO sale, Model model) throws IOException {
		model.addAttribute("product" , dao.proselect(product));
		return new ModelAndView("select");
	}

}
