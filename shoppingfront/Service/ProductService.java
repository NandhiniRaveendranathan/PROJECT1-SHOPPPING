package com.niit.shoppingfront.Service;

import java.util.List;

import com.niit.shoppingfront.model.Product;

public interface ProductService {


	void saveorupdateProduct(Product pro);
/*	List<Product> getAllProducts();*/
	Product getProductById(int id);
	List<Product> getAllProducts();
	void deleteProduct(int id);
	}