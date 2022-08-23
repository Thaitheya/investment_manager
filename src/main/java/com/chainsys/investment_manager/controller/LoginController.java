 package com.chainsys.investment_manager.controller;
import javax.servlet.http.HttpServletRequest;
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

	@GetMapping("/registerform")
	public String userRegister(Model model) {
		UserRegistration user = new UserRegistration();
;		model.addAttribute("user", user);
		return "register";
	}

	@PostMapping("/register")
	public String adduser(@Valid @ModelAttribute("user") UserRegistration register, Model model, Errors errors,HttpSession session) {
		session.setAttribute("adhaarNumber",register.getAdhaarNumber());
		if (errors.hasErrors()) {
			return "redirect:/trade/error";
		}
		try {
		ur.save(register);
		return "redirect:/form/login";
		}catch (Exception e) {
			return "redirect:/trade/error";
		}
		
	}

	@GetMapping("/login")
	public String logUser(Model model) {
		UserRegistration userRegistration = new UserRegistration();
		model.addAttribute("loginhere", userRegistration);
		return "login";
	}

	@RequestMapping("/getlogin")
	public String log(@ModelAttribute("loginhere") UserRegistration userRegistration, StockProduct products,HttpSession session,
			Model model) {
		UserRegistration registration = userRegistrationService.getEmailAndPasssword(userRegistration.getEmail(),
				userRegistration.getPassword());
		if (registration != null) {
			session.setAttribute("adhaarNumber",userRegistration.getAdhaarNumber());
			return "redirect:/trade/index";
		} else
			model.addAttribute("signin", "Sign in failed");
		return "login";
	}
	@PostMapping("/destroy")
	public String destroySession(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/form/login";
	}
}
