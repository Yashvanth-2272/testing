package com.hcl.cs.Service;

import java.util.List;

import com.hcl.cs.Model.Pet;
import com.hcl.cs.Model.User;

public interface PetService {
	List<Pet> fetchAllPets();
	void savePet(Pet pet);
	Pet getPetById(long id);
	void StatusOfPet(Long petId, User user);
	List<Pet> fetchbyUser(User user);
}
