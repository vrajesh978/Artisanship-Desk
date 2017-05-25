package com.jinal.learning.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jinal.learning.dao.ClientDao;
import com.jinal.learning.dao.ProductDAO;
import com.jinal.learning.model.Client;
import com.jinal.learning.model.PaginationResult;
import com.jinal.learning.model.Product;
import com.jinal.learning.model.ProductInfo;

@Repository("productDao")
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Product findProduct(long id) {
		Session session = sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(Product.class);
		crit.add(Restrictions.eq("id", id));
		return (Product) crit.uniqueResult();
	}

	public Product findProduct(String code) {
		Session session = sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(Product.class);
		crit.add(Restrictions.eq("code", code));
		return (Product) crit.uniqueResult();
	}

	public ProductInfo findProductInfo(String code) {
		Product product = this.findProduct(code);
		if (product == null) {
			return null;
		}
		return new ProductInfo(product.getCode(), product.getName(), product.getPrice(), product.getDescription(),
				product.getCategory());
	}

	public void save(ProductInfo productInfo, Client client) throws SerialException, SQLException {
		String code = productInfo.getCode();

		Product product = null;

		boolean isNew = false;
		if (code != null) {
			product = this.findProduct(code);
		}
		if (product == null) {
			isNew = true;
			product = new Product();
			product.setCreateDate(new Date());
		}
		product.setCode(code);
		product.setName(productInfo.getName());
		product.setPrice(productInfo.getPrice());
		product.setDescription(productInfo.getDescription());
		product.setCategory(productInfo.getCategory());
		product.setClient(client);
		if (productInfo.getFileData() != null) {
			byte[] image = productInfo.getFileData().getBytes();
			java.sql.Blob blob = new SerialBlob(image);
			if (image != null && image.length > 0) {
				product.setImage(blob);
			}
		}
		if (isNew) {
			this.sessionFactory.getCurrentSession().saveOrUpdate(product);
		}
		// If error in DB, Exceptions will be thrown out immediately
		// Nếu có lỗi tại DB, ngoại lệ sẽ ném ra ngay lập tức
		this.sessionFactory.getCurrentSession().flush();
	}

	public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage,
			String likeName) {
		String sql = "Select new " + ProductInfo.class.getName() //
				+ "(p.code, p.name, p.price,p.description) " + " from "//
				+ Product.class.getName() + " p ";
		if (likeName != null && likeName.length() > 0) {
			sql += " Where lower(p.name) like :likeName ";
		}
		sql += " order by p.createDate desc ";
		//
		Session session = sessionFactory.getCurrentSession();

		Query query = session.createQuery(sql);
		if (likeName != null && likeName.length() > 0) {
			query.setParameter("likeName", "%" + likeName.toLowerCase() + "%");
		}
		return new PaginationResult<ProductInfo>(query, page, maxResult, maxNavigationPage);
	}

	public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage) {
		return queryProducts(page, maxResult, maxNavigationPage, null);
	}

	public List<ProductInfo> queryPorducts() {
		StringBuffer buffer = new StringBuffer("FROM " + Product.class.getName());
		List<ProductInfo> products = sessionFactory.getCurrentSession().createQuery(buffer.toString()).list();
		return products;
	}

	public ProductInfo findProductInfo(long id) throws SQLException {
		// TODO Auto-generated method stub
		Product product = this.findProduct(id);
		if (product == null) {
			return null;
		}
		return new ProductInfo(product.getCode(), product.getName(), product.getPrice(), product.getDescription(),
				product.getCategory());
	}

	public long delete(long id) throws SQLException {
		Product info = findProduct(id);
		sessionFactory.getCurrentSession().delete(info);
		return id;
	}

	public List<ProductInfo> queryProductsByEmail(String email) {
		StringBuffer buffer = new StringBuffer(
				"FROM " + Product.class.getName() + " WHERE " + Client.class.getName() + ".email = :email");
		String s = "select product from " + Product.class.getName() + " product where product.client.email=:email";
		Query query = sessionFactory.getCurrentSession().createQuery(s);
		query.setParameter("email", email);
		List<ProductInfo> products = query.list();
		return products;
	}

}
