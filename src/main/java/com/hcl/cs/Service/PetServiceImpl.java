package com.hcl.cs.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.cs.Model.Pet;
import com.hcl.cs.Model.User;
import com.hcl.cs.Repository.PetRepository;

@Service
public class PetServiceImpl implements PetService{
	
	@Autowired
	PetRepository petRepository;
	
	@Override
	public List<Pet> fetchAllPets() {
		List<Pet> list = petRepository.findAll();
		return list;
	}

	@Override
	public void savePet(Pet pet) {
		petRepository.save(pet);
		
	}

	@Override
	public void StatusOfPet(Long petId, User user) {
		Optional<Pet> op = petRepository.findById(petId);	    
	    Pet pet = op.get();
	    pet.setSold(true);
	    pet.setUser(user);
	    petRepository.save(pet);
		
	}

	@Override
	public List<Pet> fetchbyUser(User user) {
		long id = user.getId();
		List<Pet> list = petRepository.findByUserId(id);
		return list;
	}

	@Override
	public Pet getPetById(long id) {
		Optional<Pet> op = petRepository.findById(id);
		return op.get();
	}

}
