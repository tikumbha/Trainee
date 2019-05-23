package com.cg.food.dao;

import java.util.List;
import com.cg.food.bean.RecipeBean;

public interface IRecipeDao {

	public void save(RecipeBean r);

	public  List<RecipeBean>  get(String category);

	public List<RecipeBean> getAll();
}
