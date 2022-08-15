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
import com.chainsys.investment_manager.model.StockProduct;
import com.chainsys.investment_manager.repository.StockProductsRepository;
import com.chainsys.investment_manager.service.StockProductService;
import com.chainsys.investment_manager.service.TransactionService;
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	StockProductsRepository stockProductsRepository;
	@Autowired
	StockProductService productService;
    @Autowired
    TransactionService transactionService;
	// Stock_Product

	@GetMapping("/adminhome")
	public String adminHome() {
		return "home";
	}
	// List

	@GetMapping("/list")
	public String getAllStockProduct(Model model) {
		List<StockProduct> stocklist =  productService.getAllStock();
		model.addAttribute("allstockproduct", stocklist);
		return "list_stock_product";
	}
	// Added stock

	@GetMapping("/addstockform")
	public String stockProduct(Model model) {
		StockProduct stock = new StockProduct();
		model.addAttribute("stock", stock);
		return "add-stock-form";
	}

	@PostMapping("/add")
	public String addStockProduct(@ModelAttribute("stock") StockProduct Product) {
		productService.save(Product);
		return "redirect:/admin/list";
	}

	// Delete stock

	@GetMapping("/deletestock")
	public String deleteStockProduct(@RequestParam("id") int id, Model model) {
		productService.deleteById(id);
		return "redirect:/admin/list";
	}

	// update stock

	@GetMapping("/updateform")
	public String updateStockProductForm(@RequestParam("id") int id, Model model) {
		StockProduct sp = new StockProduct();
		productService.findById(id);
		model.addAttribute("updatestock", sp);
		return "update-stock-form";
	}

	@PostMapping("/update")
	public String updateStock(@ModelAttribute("updatestock") StockProduct product) {
		productService.save(product);
		return "redirect:/admin/list";
	} 
	
//	@GetMapping("/adminlogin")
//	public String adminLogin(Model model) {
//		StockProduct product = ;
//		
//	}
}
