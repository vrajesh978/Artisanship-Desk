package com.jinal.learning.dao;

import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import com.jinal.learning.model.Client;
import com.jinal.learning.model.PaginationResult;
import com.jinal.learning.model.Product;
import com.jinal.learning.model.ProductInfo;

public interface ProductDAO {

	public Product findProduct(String code);

	public ProductInfo findProductInfo(String code);

	public List<ProductInfo> queryPorducts();

	public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage);

	public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage, String likeName);

	public void save(ProductInfo productInfo,Client client) throws SerialException, SQLException;

	public ProductInfo findProductInfo(long id) throws SQLException;

	public long delete(long id) throws SQLException;
	
	public List<ProductInfo> queryProductsByEmail(String email);

}