package com.jinal.learning.model;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Products")
public class Product extends BaseModel implements Serializable {

	private static final long serialVersionUID = -1000119078147252957L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String code;
	private String name;
	private String description;
	private double price;
	private java.sql.Blob image;
	private String category;

	@ManyToOne()
	@JoinColumn(name = "clientid")
	Client client;

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public void setId(long id) {
		this.id = id;
	}

	// For sort.
	private Date createDate;

	public Product() {
	}

	@Column(name = "id", nullable = false)
	public long getId() {
		return id;
	}

	@Column(name = "Code", length = 20, nullable = false)
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Column(name = "Name", length = 255, nullable = false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "Price", nullable = false)
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CreateDate", nullable = false)
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Column(name = "description", nullable = false)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Lob
	@Column(name = "Image", nullable = true)
	public byte[] getImage() throws SQLException {
		return image.getBytes(1, (int) image.length());
	}

	public void setImage(java.sql.Blob image) {
		this.image = image;
	}

	@Column(name = "category", nullable = false)
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

}