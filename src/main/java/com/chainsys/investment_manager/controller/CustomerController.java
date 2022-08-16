package com.chainsys.investment_manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.investment_manager.model.Transactions;
import com.chainsys.investment_manager.service.TransactionService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
     @Autowired
     TransactionService service;
     @GetMapping("/transactionlist")
public String getAllPurchasedStock(Model model) {
	List<Transactions> transList = service.getAllTrans();
	model.addAttribute("alltransaction", transList);
	return "list-trans-customer";
}
}
