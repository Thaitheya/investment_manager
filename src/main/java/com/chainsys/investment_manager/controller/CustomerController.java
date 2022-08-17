package com.chainsys.investment_manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.investment_manager.dto.CustomerTransDTO;
import com.chainsys.investment_manager.dto.CustomerTransactionDTO;
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
  public String getTransDetails( Model model) {
      Transactions trans = new Transactions();
      model.addAttribute("trans", trans);
      return "add-trans-form";
  }
@PostMapping("/transact")
  public String addTrans(@ModelAttribute("trans") Transactions transactions) {
     service.addTransactions(transactions);
     return "redirect:/customer/list";
  }


  @GetMapping("/getCustomerTransaction")
  public String getCustomerTrans(@RequestParam("cusid") int id, Model model) {
	CustomerTransDTO dto = accountService.getCustomerTransDTO(id);
	model.addAttribute("getCustomer", dto.getAccount());
	model.addAttribute("getTrans", dto.getTransactions());
	return "customer-transaction";
}
  
}
