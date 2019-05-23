package com.cg.food.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;

import com.cg.food.bean.RecipeBean;

public interface IRecipeService {

	public String addRecipe( RecipeBean r, BindingResult result);

	public  List<RecipeBean>  getRecipe(String category);

	public List<RecipeBean> getAllRecipes();
}
