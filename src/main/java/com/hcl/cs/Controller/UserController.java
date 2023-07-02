package com.hcl.cs.Controller;

import java.security.Principal;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hcl.cs.Model.Pet;
import com.hcl.cs.Model.User;
import com.hcl.cs.Service.PetService;
import com.hcl.cs.Service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	PetService petService;
	
	//registration
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "registration";
    }
	
	@RequestMapping(value="/registration",method=RequestMethod.POST)
    public String userRegistration(@ModelAttribute("userForm") User userForm) {
    	userService.save(userForm);
    	return "redirect:/login";   	
    }
	
	//login
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }
	
	//Home
	@RequestMapping(value={"/","/welcome"},method=RequestMethod.GET)
	public String Welcome(Model model) {
		List<Pet> list=petService.fetchAllPets();
		model.addAttribute("petList",list);
		return "welcome";
	}
	
	//Adding new pet
	@RequestMapping(value="/new",method=RequestMethod.GET)
    public String createProduct(Model model) {
    	model.addAttribute("petForm", new Pet());
    	return "Newpet";
    }
	
	//saving the pet
	 @RequestMapping(value="/save",method=RequestMethod.POST)
	    public String addPet(@ModelAttribute("productForm") Pet pet) {
	    	Random rand=new Random();
	    	long id=rand.nextInt(9)+10;
	    	pet.setPetId(id);
	    	petService.savePet(pet);
	    	return "redirect:/welcome";   	
	    }
	 
	 //buy option
	 @GetMapping("/buyPet/{id}")
	  public String BuyingPet(@PathVariable("id") Long petId,  Principal principal) {
		String username = principal.getName();
		User user = userService.findByUsername(username);
		petService.StatusOfPet(petId, user);
		return "redirect:/welcome";
	}
	 
	 //My Pet
	 @RequestMapping(value="/myPets", method = RequestMethod.GET)
		public String mypet(Principal principal,Model model) {
			String username = principal.getName();
			User user = userService.findByUsername(username);
			List<Pet> list = petService.fetchbyUser(user);
			model.addAttribute("petList", list);
			return "myPets";
		}
	
}
