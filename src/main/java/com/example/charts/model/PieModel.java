package com.example.charts.model;

import java.io.Serializable;

public class PieModel implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String category;
	private Double value;
	
	
	public PieModel() {}
	public PieModel(String category, Double value) {
		super();
		this.category = category;
		this.value = value;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Double getValue() {
		return value;
	}
	public void setValue(Double value) {
		this.value = value;
	}
	
	
	
}
