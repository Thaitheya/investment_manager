package com.chainsys.investment_manager.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.chainsys.investment_manager.model.UserRegistration;
import com.chainsys.investment_manager.repository.UserRegistrationRepository;
import com.chainsys.investment_manager.service.UserRegistrationService;

@Controller
@RequestMapping("/form")
public class LoginController {
	@Autowired
	UserRegistrationRepository ur;
	@Autowired
	private UserRegistrationService userRegistrationService;
	@GetMapping("/registerform")
	public String userRegister(Model model) {
		UserRegistration user = new UserRegistration();
		model.addAttribute("user", user);
		return "register";

	}

	@PostMapping("/register")
	public String adduser(@Valid@ModelAttribute("user") UserRegistration userreg, Model model,Errors errors) {
		if(errors.hasErrors()) {
			return "register";
		}
		ur.save(userreg);
		return "redirect:/login";
	}
}
