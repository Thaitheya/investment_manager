package com.chainsys.investment_manager.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.chainsys.investment_manager.model.StockProduct;
import com.chainsys.investment_manager.model.UserRegistration;
import com.chainsys.investment_manager.repository.UserRegistrationRepository;
import com.chainsys.investment_manager.service.StockProductService;
import com.chainsys.investment_manager.service.UserRegistrationService;

@Controller
@RequestMapping("/form")
public class LoginController {
	@Autowired
	UserRegistrationRepository ur;
	@Autowired
	UserRegistrationService userRegistrationService;
	@Autowired
	StockProductService productService;
//	@Autowired
//	AdminLoginService adminLoginService;

	@GetMapping("/registerform")
	public String userRegister(Model model) {
		UserRegistration user = new UserRegistration();
		model.addAttribute("user", user);
		return "register";
	}

	@PostMapping("/register")
	public String adduser(@Valid @ModelAttribute("user") UserRegistration register, Model model, Errors errors,
			HttpSession session) {
		if (errors.hasErrors()) {
			return "register";
		}
		session.setAttribute("adhaarNo", register.getAdhaarNumber());
		ur.save(register);
		return "redirect:/form/login";
	}

	@GetMapping("/login")
	public String logUser(Model model) {
		UserRegistration userRegistration = new UserRegistration();
		model.addAttribute("loginhere", userRegistration);
		return "login";
	}

	@RequestMapping("/getlogin")
	public String log(@ModelAttribute("loginhere") UserRegistration userRegistration, StockProduct products,
			Model model, HttpSession httpSession) {
		UserRegistration registration = userRegistrationService.getEmailAndPasssword(userRegistration.getEmail(),
				userRegistration.getPassword());
		if (registration != null) {
			return "redirect:/trade/index";
		} else
			model.addAttribute("signin", "Sign in failed");
		return "login";
	}

//	@GetMapping("/adminlogin")
//	public String logAdmin(Model model) {
//		AdminLogin adminLogin = new  AdminLogin();
//		model.addAttribute("loginadmin", adminLogin);
//		return "adminlogin";
//	}
//	@RequestMapping("/getadminlogin")
//	public String log(@ModelAttribute("loginadmin")AdminLogin adminLogin,Model model, HttpSession httpSession) {
//		 AdminLogin login = adminLoginService.addlogin(adminLogin.getAdminId(),adminLogin.getPassword());
//		if (login != null) {
//			return "redirect:/admin/adminhome";
//		} else
//			model.addAttribute("signin", "Sign in failed");
//		return "adminlogin";
//	}

}
