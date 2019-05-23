package com.cg.food.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "recipebean")
public class RecipeBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int Id;
	private String name;
	
	private String ingredients_recipe;
	private String time_To_Prepare;
	private String category_recipe;
	private String procedure_recipe;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIngredients_recipe() {
		return ingredients_recipe;
	}
	public void setIngredients_recipe(String ingredients_recipe) {
		this.ingredients_recipe = ingredients_recipe;
	}
	public String getTime_To_Prepare() {
		return time_To_Prepare;
	}
	public void setTime_To_Prepare(String time_To_Prepare) {
		this.time_To_Prepare = time_To_Prepare;
	}
	public String getCategory_recipe() {
		return category_recipe;
	}
	public void setCategory_recipe(String category_recipe) {
		this.category_recipe = category_recipe;
	}
	public String getProcedure_recipe() {
		return procedure_recipe;
	}
	public void setProcedure_recipe(String procedure_recipe) {
		this.procedure_recipe = procedure_recipe;
	}
	@Override
	public String toString() {
		return "RecipeBean [Id=" + Id + ", name=" + name + ", ingredients_recipe=" + ingredients_recipe
				+ ", time_To_Prepare=" + time_To_Prepare + ", category_recipe=" + category_recipe
				+ ", procedure_recipe=" + procedure_recipe + "]";
	}
	
	
	
	
	
}
