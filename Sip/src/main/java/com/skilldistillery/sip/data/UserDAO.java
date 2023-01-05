package com.skilldistillery.sip.data;

import com.skilldistillery.sip.entities.Address;
import com.skilldistillery.sip.entities.Spirit;
import com.skilldistillery.sip.entities.User;

public interface UserDAO {

	User findById(int userId);
	User findUsernameAndPassword(String username, String password);
	User create(User user);
	Spirit createSpiritTasting(Spirit spirit);
	Address createAddress(Address address);
}
 