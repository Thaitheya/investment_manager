package com.chainsys.investment_manager.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
  private static final String ADD = "add-stock-form";
  private static final String UPDATE = "update-stock-form";
	@Autowired
	StockProductsRepository stockProductsRepository;
	@Autowired
	StockProductService productService;
    @Autowired
    TransactionService transactionService;
	// Stock_Product

	@GetMapping("/adminhome")
	public String adminHome() {
		return "admin";
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
	public String stockProduct(Model model,HttpServletRequest request) {
		StockProduct stock = new StockProduct();
		model.addAttribute("stock", stock);
		return ADD;
	}

	@PostMapping("/add")
	public String addStockProduct(@ModelAttribute("stock") StockProduct stockProduct, Model model) {
		if(stockProduct.getNoOfSharesInHand() <= 0) {
			model.addAttribute("message","insufficent fund");
			return "redirect:/trade/error";
		}
		else {
			try {
				productService.save(stockProduct);
				model.addAttribute("message","Stock added successfully");
				return "redirect:/admin/list";
			}
			catch(Exception ex) {
				model.addAttribute("message", "Insufficent stock");
				return ADD;
			}
		
		}
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
		StockProduct product = new StockProduct();
		productService.findById(id);
		model.addAttribute("updatestock", product);
		return UPDATE;
	}

	@PostMapping("/update")
	public String updateStock(@ModelAttribute("updatestock") StockProduct stockProduct) {
		productService.save(stockProduct);
		return "redirect:/admin/list";
	} 
	
}