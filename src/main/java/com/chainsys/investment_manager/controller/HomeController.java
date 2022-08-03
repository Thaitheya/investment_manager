package com.chainsys.investment_manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.investment_manager.model.SharesPurchase;
import com.chainsys.investment_manager.model.SharesSales;
import com.chainsys.investment_manager.repository.StockProductsRepository;
import com.chainsys.investment_manager.service.StockPurchaseService;
import com.chainsys.investment_manager.service.StockSalesService;

@Controller
@RequestMapping("/trade")
public class HomeController {
@Autowired
  StockPurchaseService purchaseService;
  @Autowired
  StockProductsRepository products_Repository;
  @Autowired
    StockSalesService salesService;
     @GetMapping("/tradelist")
     public String getAllPurchasedStock(Model model) {
	     List<SharesPurchase> purchasesList = purchaseService.getAllPurchasedStock();
	     model.addAttribute("allpurchasedstock", purchasesList);
	     return "list_stock_product";
}
@GetMapping("/addpurchases")
public String stockPurchases(Model model){
     SharesPurchase purchases = new SharesPurchase();
     model.addAttribute("addpurchases", purchases);
     return "add-purchase-form";
}

@PostMapping("/addp")
 public String addStockPurchases(@ModelAttribute("addpurchases") SharesPurchase purchases) {
   purchaseService.addStockProduct(purchases);
   return "redirect:/trade/tradelist";
}

@GetMapping("/addSales")
public String addStockSell(Model model) {
 SharesSales sales = new SharesSales();
 model.addAttribute("addsales", sales);
 return "add-sales-form";

}
@PostMapping("/adds")
public String addStockSales(@ModelAttribute("addsales") SharesSales sales) {
     salesService.addStockProduct(sales);
     return "redirect:/trade/tradelist";
}





//Customer Account
    
}
