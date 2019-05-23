package com.cg.food.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import com.cg.food.bean.RecipeBean;
import com.cg.food.dao.IRecipeDao;

public class RecipeServiceImpl implements IRecipeService {

	@Autowired
	IRecipeDao dao;

	public RecipeServiceImpl(IRecipeDao dao) {
		super();
		this.dao = dao;
	}

	public IRecipeDao getDao() {
		return dao;
	}

	public void setDao(IRecipeDao dao) {
		this.dao = dao;
	}

	@Override
	public String addRecipe(RecipeBean r,BindingResult result) {
		if(result.hasErrors())
        {
            return "Error";
        }
		dao.save(r);
		return "S U C C E S S";
	}

	@Override
	public  List<RecipeBean>  getRecipe(String category) {

		return dao.get(category);

	}

	@Override
	public List<RecipeBean> getAllRecipes() {
		return dao.getAll();
	}

}
