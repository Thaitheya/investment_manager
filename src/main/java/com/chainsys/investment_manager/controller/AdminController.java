package com.chainsys.investment_manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.investment_manager.dto.StockProdectPurchaseDTO;
import com.chainsys.investment_manager.model.Stock_Product;
import com.chainsys.investment_manager.repository.StockProductsRepository;
import com.chainsys.investment_manager.service.StockProductService;



@Controller
@RequestMapping("/admin")
public class AdminController {
	
  @Autowired
  StockProductsRepository stockProductsRepository;
  @Autowired
  StockProductService productService;

     //Stock_Product

	@GetMapping("/adminhome")
	public String adminHome() {
		return "admin";
	}
     //List

	@GetMapping("/list")
	public String getAllStockProduct(Model model) {
		Iterable<Stock_Product> stocklist = productService.getAllStock();
		model.addAttribute("allstockproduct", stocklist);
		return "list_stock_product";
	}
     //Added stock

	@GetMapping("/addstockform")
	public String stockProduct(Model model) {
		Stock_Product stock = new Stock_Product();
		model.addAttribute("stock", stock);
		return "add-stock-form";
	}

	@PostMapping("/add")
	public String addStockProduct(@ModelAttribute("stock") Stock_Product stock_Product) {
		productService.save(stock_Product);
		return "redirect:/admin/list";
	}

     //Delete stock

	@GetMapping("/deletestock")
	public String deleteStockProduct(@RequestParam("id") int id, Model model) {
		productService.deleteById(id);
		return "redirect:/admin/list";
	}

	//update stock

	@GetMapping("/updateform")
	public String updateStockProductForm(@RequestParam("id") int id, Model model) {
		Stock_Product sp = new Stock_Product();
	     productService.findById(id);
		model.addAttribute("updatestock",sp);
		return "update-stock-form";
	}

	@PostMapping("/update")
    public String updateStock( @ModelAttribute("updatestock") Stock_Product sp) {
    	 productService.save(sp);
    	return "redirect:/admin/list";
    }

    
}
