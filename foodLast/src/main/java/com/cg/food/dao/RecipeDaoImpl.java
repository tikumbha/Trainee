package com.cg.food.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.cg.food.bean.RecipeBean;

@Transactional
public class RecipeDaoImpl implements IRecipeDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public void save(RecipeBean r) {

		em.persist(r);
	}

	@Override
	public  List<RecipeBean>  get(String category) {
		System.out.println(category);
		List<RecipeBean> listRecipe = em.createQuery("SELECT m FROM RecipeBean m WHERE m.category_recipe LIKE '"+ category +"'").getResultList();
		//RecipeBean t = em.find(RecipeBean.class,Id,category);
		if(listRecipe == null)
			return null;
		
		return listRecipe;
	}

	@Override
	public List<RecipeBean> getAll() {
		// TODO Auto-generated method stub
		List<RecipeBean> listRecipe = em.createQuery("SELECT m FROM RecipeBean m").getResultList();
		if(listRecipe == null)
		return null;
		return listRecipe;
		
	}

	
	
}
