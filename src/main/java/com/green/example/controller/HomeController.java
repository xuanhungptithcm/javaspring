package com.green.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.green.example.entities.Food;
import com.green.example.service.FoodService;

@Controller
@RequestMapping("/")
public class HomeController {
	@Autowired
	private FoodService foodService;

	@RequestMapping(value = { "/dangki"}, method = RequestMethod.GET)
	public ModelAndView listUsers() {
		ModelAndView model = new ModelAndView();
		model.setViewName("home");

		return model;
	}

	@RequestMapping(value = { "/","/trangchu" }, method = RequestMethod.GET)
	public ModelAndView hihi() {
		ModelAndView model = new ModelAndView();
		List<Food> food = foodService.findAllUsers();
		model.addObject("food", food);
		model.addObject("size", food.size());
		
		model.setViewName("home/trang-chu");

		return model;
	}
}
