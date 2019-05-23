package com.cg.food.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cg.food.bean.AdminBean;
import com.cg.food.bean.RecipeBean;
import com.cg.food.service.RecipeServiceImpl;

@Controller
public class RecipeController {

	@Autowired
	RecipeServiceImpl service;

	// Index Page
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() { 
		return "index";
	}

	// Login method
	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String getStared(@ModelAttribute("admin") AdminBean admin) {
		return "login";
	}

	// userPage
	@RequestMapping(path = "/operations", method = RequestMethod.POST)
	public ModelAndView auth(@ModelAttribute("admin") AdminBean admin) {

		ModelAndView mv = new ModelAndView();
		if (admin.getUsername().equals("admin") && admin.getPassword().equals("12345")) {
			mv.setViewName("admin");
			System.out.println("Authenticated ...");
		} else if (admin.getUsername().equals("user") && admin.getPassword().equals("12345")) {
			mv.setViewName("user");
			System.out.println("Wrong username and password");
		} else {
			mv.setViewName("login");
			System.out.println("Wrong username and password");
		}
		return mv;
	}

	// Add trainee method
	@RequestMapping(path = "/addRecipe", method = RequestMethod.GET)
	public ModelAndView newTrainee(@ModelAttribute("f") RecipeBean f) {

		ModelAndView mv = new ModelAndView();
		System.out.println("In add trainee page ...");
		ArrayList<String> al = new ArrayList<String>();
		al.add("Veg");
		al.add("Non-Veg");
		System.out.println("List:  " + al);
		mv.addObject("clist", al);
		mv.setViewName("add");
		return mv;
	}

	@RequestMapping(path = "/getRecipeData", method = RequestMethod.POST)
	public ModelAndView addRecipe(@ModelAttribute("f") RecipeBean f, BindingResult result) {
//		RecipeBean recipe = new RecipeBean();
		ModelAndView mv = new ModelAndView();
		String res = service.addRecipe(f, result);
		if (result.hasErrors()) {
			mv.setViewName("add");
			return mv;
		}
		// System.out.println(tr);
//		mv.setViewName("recipe");
		
		  List<RecipeBean> list = new ArrayList<RecipeBean>(); list.add(f);
		  
		  mv.addObject("tlist", list);
		mv.addObject("recipe", new RecipeBean());
		mv.setViewName("recipe");
		return mv;

	}

	@RequestMapping(path = "/confirmation", method = RequestMethod.POST)
	public ModelAndView orderconfirmation(@ModelAttribute("f") RecipeBean f, BindingResult result) {

		ModelAndView mv = new ModelAndView();
		List<RecipeBean> list = new ArrayList<RecipeBean>();
		list.add(f);
		mv.addObject("tlist", list);
		mv.addObject("recipe", new RecipeBean());
		System.out.println("hoiuhiiiiiiiiiiiiiiiiiiiiiqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq" + f);
		mv.setViewName("recipe");
		// String res = service.addRecipe(f, result);

		// mv.setViewName("added");
		return mv;
	}

	// Retrieve one recipe
	@RequestMapping(path = "/getRecipe", method = RequestMethod.GET)
	public ModelAndView selectCategory(@ModelAttribute("recipe") RecipeBean recipe) {
		ModelAndView mv = new ModelAndView();
		System.out.println("In add recipe page ...");
		ArrayList<String> al = new ArrayList<String>();
		al.add("Veg");
		al.add("Non-veg");
		System.out.println("List:  " + al);
		mv.addObject("clist", al);
		mv.setViewName("getRecipe");
		return mv;

	}

	@RequestMapping(path = "getRecipeDetails", method = RequestMethod.POST)
	public ModelAndView getTrainee(@ModelAttribute("f") RecipeBean f) {
		ModelAndView mv = new ModelAndView();

		 List<RecipeBean>  list = service.getRecipe(f.getCategory_recipe());
//		List<RecipeBean> list = new ArrayList<RecipeBean>();
//		list.add(f);
		mv.addObject("tlist", list);
		mv.addObject("recipe", new RecipeBean());
		mv.setViewName("getAllRecipe");

		return mv;
	}

	@RequestMapping(path = "/getAll", method = RequestMethod.GET)
	public ModelAndView getAll() {

		ModelAndView mv = new ModelAndView();

		List<RecipeBean> list = new ArrayList<RecipeBean>();
		list = service.getAllRecipes();
		mv.addObject("tlist", list);
		mv.addObject("getAllRecipe", new RecipeBean());
		mv.setViewName("getAllRecipe");
		return mv;

	}

}
