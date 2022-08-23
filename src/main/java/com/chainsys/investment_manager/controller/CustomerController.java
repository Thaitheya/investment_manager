package com.chainsys.investment_manager.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.investment_manager.dto.CustomerTransactionDTO;
import com.chainsys.investment_manager.model.CustomerAccount;
import com.chainsys.investment_manager.model.Transactions;
import com.chainsys.investment_manager.service.CustomerAccountService;
import com.chainsys.investment_manager.service.TransactionService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	TransactionService service;
	@Autowired
	CustomerAccountService accountService;

	@GetMapping("/list")
	public String getAllPurchasedStock(Model model) {
		List<Transactions> transList = service.getAllTrans();
		model.addAttribute("alltransaction", transList);
		return "list-trans-customer";
	}

	@GetMapping("/addtransform")
	public String getTransDetails(Model model, HttpServletRequest request) {
		Transactions trans = new Transactions();
		HttpSession session = request.getSession();
		String adhaarNumber = (String) session.getAttribute("adhaarNumber");
		trans.setAdhaarNumber(adhaarNumber);
		int customerid = (int) session.getAttribute("customerId");
		trans.setCustomerId(customerid);
		model.addAttribute("trans", trans);
		return "add-trans-form";
	}

	@PostMapping("/transact")
	public String addTrans(@ModelAttribute("trans") Transactions transaction) {
		service.addTransactions(transaction);
		return "redirect:/customer/list";
	}

	@GetMapping("/getCustomerTransaction")
	public String getCustomerTrans(@RequestParam("cusid") int id, Model model) {
		CustomerTransactionDTO dto = accountService.getCustomerTransDTO(id);
		model.addAttribute("getCustomer", dto.getAccount());
		model.addAttribute("getTrans", dto.getTransactions());
		return "customer-transaction";
	}

//Customer Account
	@GetMapping("/getcustomer")
	public String getCustomerDetails(Model model, HttpServletRequest request) {
		CustomerAccount account = new CustomerAccount();
		model.addAttribute("addcustomerdetails", account);
		return "customer-details";
	}

	@PostMapping("/customeraccount")
	public String postCustomerDetails(@ModelAttribute("addcustomerdetails") CustomerAccount account, Model model,
			Errors error,HttpSession session) {
		session.setAttribute("adhaarNumber",account.getCustomerId());
		if (error.hasErrors()) {
			return "customer-details";
		} else {
			if (account.getDepositedAmount() <= 0) {
				model.addAttribute("message", "insufficent fund");
			}
			accountService.addcustomerDetails(account);
			return "redirect:/customer/getCustomerlist";
		}

	}

	@GetMapping("/getCustomerlist")
	public String customerTrans(Model model) {
		List<CustomerAccount> list = accountService.accounts();
		model.addAttribute("customerlist", list);
		return "customerdetailslist";
	}

}
