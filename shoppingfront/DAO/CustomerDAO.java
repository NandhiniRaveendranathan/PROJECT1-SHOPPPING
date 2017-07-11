package com.niit.shoppingfront.DAO;

import com.niit.shoppingfront.model.Customer;

public interface CustomerDAO {

	public void saveCust(Customer cust);

	public Customer getCustById(String username);
	
	public Customer getUsersByEmailId(String emailid);

	// public boolean CustAlreadyExist(String email,boolean b);

}