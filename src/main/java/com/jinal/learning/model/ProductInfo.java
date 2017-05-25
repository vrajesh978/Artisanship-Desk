package com.jinal.learning.model;

import java.io.Serializable;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ProductInfo extends BaseModel implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String code;
	private String name;
	private String description;
	private double price;
	private String category;

	private boolean newProduct = false;

	// Upload file.
	private CommonsMultipartFile fileData;

	public ProductInfo() {
	}

	public ProductInfo(Product product) {
		this.code = product.getCode();
		this.name = product.getName();
		this.price = product.getPrice();
		this.description = product.getDescription();
		this.category = product.getCategory();
	}

	// Không thay đổi Constructor này,
	// nó được sử dụng trong Hibernate query.
	public ProductInfo(String code, String name, double price, String description, String category) {
		this.code = code;
		this.name = name;
		this.price = price;
		this.description = description;
		this.category = category;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public CommonsMultipartFile getFileData() {
		return fileData;
	}

	public void setFileData(CommonsMultipartFile fileData) {
		this.fileData = fileData;
	}

	public boolean isNewProduct() {
		return newProduct;
	}

	public void setNewProduct(boolean newProduct) {
		this.newProduct = newProduct;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

}