package com.cg.food.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AdminBean {

	
	@Id
	private String username;
	private String password;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Admin [username=" + username + ", password=" + password + "]";
	}
}
