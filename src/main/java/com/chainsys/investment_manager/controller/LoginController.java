 package com.chainsys.investment_manager.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
    UserRegistrationService userRegistrationService;
	
	@GetMapping("/registerform")
	public String userRegister(Model model) {
		UserRegistration user = new UserRegistration();
		model.addAttribute("user", user);
		return "register";
	}

	@PostMapping("/register")
	public String adduser(@Valid @ModelAttribute("user") UserRegistration register, Model model,Errors errors) {
		if(errors.hasErrors()) {
			return "register";
		}
		ur.save(register);
		return "redirect:/form/login";
	}
	@GetMapping("/login")
	public String logUser( Model model) {
		UserRegistration userRegistration = new UserRegistration();
		model.addAttribute("loginhere",userRegistration);
		return "login";
	}
	@RequestMapping("/getlogin")
	public String log(@ModelAttribute("loginhere") UserRegistration registration, Model model) {
		UserRegistration userRegistration = userRegistrationService.getEmailAndPasssword(registration.getEmail(),registration.getPassword());
		if(userRegistration != null) {
		 return "redirect:/trade/index";
		}else {
		  model.addAttribute("Sign in failed","This email is already exist");
		}
		return "login";
	}

}
