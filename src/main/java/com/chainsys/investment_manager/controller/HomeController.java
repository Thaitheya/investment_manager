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
import com.chainsys.investment_manager.dto.StockProdectPurchaseDTO;
import com.chainsys.investment_manager.dto.StockProductSalesDTO;
import com.chainsys.investment_manager.model.SharesPurchase;
import com.chainsys.investment_manager.model.SharesSales;
import com.chainsys.investment_manager.repository.StockProductsRepository;
import com.chainsys.investment_manager.service.CustomerAccountService;
import com.chainsys.investment_manager.service.SharePurchasesService;
import com.chainsys.investment_manager.service.StockSalesService;
@Controller
@RequestMapping("/trade")
public class HomeController {

	@Autowired
	StockProductsRepository products_Repository;
	@Autowired
	StockSalesService salesService;
	@Autowired
	SharePurchasesService purchasesServices;
	@Autowired
    CustomerAccountService accountService;
    
	@GetMapping("/index")
	public String index() {
		return "index";
	}

	@GetMapping("/tradelist")
	public String getAllPurchasedStock(Model model) {
		List<SharesPurchase> purchasesList = purchasesServices.getAllPurchasedStock();
		model.addAttribute("allstock", purchasesList);
		return "list_stock_product";
	}

	@GetMapping("/addpurchases")
	public String stockPurchases(Model model) {
		SharesPurchase purchases = new SharesPurchase();
		model.addAttribute("addpurchases", purchases);
		return "add-purchase-form";
	}

	@PostMapping("/addp")
	public String addStockPurchases(@ModelAttribute("addpurchases") SharesPurchase purchases) {
		purchasesServices.addStockProduct(purchases);
		return "redirect:/trade/tradelist";
	}

	@GetMapping("/addSale")
	public String addStockSell(Model model) {
		SharesSales sales = new SharesSales();
		model.addAttribute("addsales", sales);
		return "add-sales-form";

	}

	@PostMapping("/adds")
	public String addStockSales(@ModelAttribute("addsales") SharesSales sales) {
		salesService.sellStockProduct(sales);
		return "redirect:/trade/tradelist";
	}
	 
	@GetMapping("/getstockofsharespurchase")
	public String getStockToPurchase(@RequestParam("id") int id, Model model) {
		StockProdectPurchaseDTO dto = purchasesServices.getStockProdectPurchaseDTO(id);
		model.addAttribute("getstockproduct", dto.getStockProduct());
		model.addAttribute("listofstocks", dto.getSharesPurchases());
		return "stock-product-purchase";

	}

	@GetMapping("/getstockofsharessales")
	public String getStockToSales(@RequestParam("id") int id, Model model) {
		StockProductSalesDTO dto = salesService.getProductSalesDTO(id);
		model.addAttribute("getStockproductsales", dto.getStockProduct());
		model.addAttribute("listofstockssales", dto.getSharesSales());
		return "stock-product-sales";
	}
	
}
