package com.hcl.cs.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.hcl.cs.Model.User;
import com.hcl.cs.Repository.UserRepository;
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	UserRepository userRepository;
	
	
	@Override
	public void save(User user) {
		String encodedPassword = passwordEncoder.encode(user.getPassword());
	    user.setPassword(encodedPassword);
	    userRepository.save(user);
		
	}
	
//	public void updateUserPassword(User user, String newPassword) {
//        String encodedPassword = passwordEncoder.encode(newPassword);
//        user.setPassword(encodedPassword);
//        userRepository.save(user);
//    }

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

}
