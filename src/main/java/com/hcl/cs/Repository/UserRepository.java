package com.hcl.cs.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hcl.cs.Model.User;

public interface UserRepository extends JpaRepository<User, Long>{

	User findByUsername(String username);

}
