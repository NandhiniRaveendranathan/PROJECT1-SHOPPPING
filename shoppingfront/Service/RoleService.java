package com.niit.shoppingfront.Service;

import com.niit.shoppingfront.model.Role;

public interface RoleService {


	public void saveOrUpdateRole(Role role);

	 Role getRoleById(String cid);
}