package com.chainsys.investment_manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.investment_manager.model.SharesPurchases;
import com.chainsys.investment_manager.repository.StockProductsRepository;
import com.chainsys.investment_manager.service.StockPurchaseService;

@Controller
@RequestMapping("/trade")
public class HomeController {
@Autowired
  StockPurchaseService purchaseService;
  @Autowired
  StockProductsRepository products_Repository;
     @GetMapping("/tradelist")
     public String getAllPurchasedStock(Model model) {
	     List<SharesPurchases> purchasesList = purchaseService.getAllPurchasedStock();
	     model.addAttribute("allpurchasedstock", purchasesList);
	     return "list_stock_product";
}
@GetMapping("/addpurchases")
public String addStockPurchases(Model model){
     SharesPurchases purchases = new SharesPurchases();
     model.addAttribute("addpurchases", purchases);
     return "add-purchase-form";
}

@PostMapping("/add")
 public String addStockPurchases(@ModelAttribute("addpurchases") SharesPurchases purchases) {
   purchaseService.addStockProduct(purchases);
   return "redirect:/trade/tradelist";
}

}
