package com.chainsys.investment_manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.investment_manager.model.UserRegistration;
import com.chainsys.investment_manager.repository.User_registrationRepository;
import com.chainsys.investment_manager.service.UserRegistrationService;

@Controller
@RequestMapping("/form")
public class LoginController {
	@Autowired
	User_registrationRepository ur;
    @Autowired
    UserRegistrationService us;
	// User Register
    @GetMapping("/registerform")
	public String userRegister(Model model) {
		UserRegistration user = new  UserRegistration();
		model.addAttribute("user", user);
		return "register";
	}

	@PostMapping("/register")
	public String adduser(@ModelAttribute("user") UserRegistration userreg) {
		ur.save(userreg);
		return "home";
	}
}
