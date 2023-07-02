package com.hcl.cs.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hcl.cs.Model.Pet;

public interface PetRepository extends JpaRepository<Pet, Long>{
	List<Pet> findByUserId(Long userId);
}
