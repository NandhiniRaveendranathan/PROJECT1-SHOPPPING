package com.niit.shoppingfront.DAO;

import com.niit.shoppingfront.model.Role;

public interface RoleDAO {

 void saveOrUpdateRole(Role role);

public Role getByEmailId(String emailid);

}