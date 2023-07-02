package com.hcl.cs.Service;

import com.hcl.cs.Model.User;

public interface UserService {
	    void save(User user);
	    User findByUsername(String username);
	}

