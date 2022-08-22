package com.chainsys.investment_manager.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;
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
	 private static final String ADD = "add-purchase-form";
	 private static final String SELL= "add-sales-form";
	@Autowired
	StockProductsRepository productsRepository;
	@Autowired
	StockSalesService salesService;
	@Autowired
	SharePurchasesService purchasesServices;
	@Autowired
	CustomerAccountService accountService;
    @GetMapping("/home")
    public String home() {
    	return "home1";
    }
	@GetMapping("/index")
	public String index() {
		return "home";
	}
    @GetMapping("/about")
    public String about() {
    	return "About";
    }
    @GetMapping("/error") 
    public String errormessage() {
    	return"error";
    }
	@GetMapping("/tradepurchaselist")
	public String getAllPurchasedStock(Model model) {
		List<SharesPurchase> purchasesList = purchasesServices.getAllPurchasedStock();
		model.addAttribute("allstockpurchase", purchasesList);
		return "list_stock_purchases";
	}
	//
	
	@GetMapping("/addpurchases")
	public String stockPurchases(Model model) {
		SharesPurchase purchases = new SharesPurchase();
		model.addAttribute("addpurchases",purchases);
		
		return ADD;
	}

	@PostMapping("/addp")
	public String addStockPurchases(@Valid @ModelAttribute("addpurchases") SharesPurchase sharePurchase, Errors error, Model model) {
		if(error.hasErrors()) {
			return "redirect:/trade/error";
		}
		else {
			try {
				purchasesServices.addStockProduct(sharePurchase);
				return "redirect:/trade/tradepurchaselist";
			}
		    catch(Exception ex) {
		    	model.addAttribute("message",":(Purchase unsuccessful");
		    	return "redirect:/trade/error";
		    }
		}
	}

	@GetMapping("/tradesaleslist")
	public String getAllSoldStock(Model model) {
		List<SharesSales> sharesSalesList = salesService.getAllSoldStock();
		model.addAttribute("allstocksold", sharesSalesList);
		return "list_stock_sold";
	}

	@GetMapping("/addSale")
	public String addStockSell(Model model) {
		SharesSales sales = new SharesSales();
		model.addAttribute("addsales", sales);
		return "add-sales-form";

	}

	@PostMapping("/adds")
	public String addStockSales(@ModelAttribute("addsales") SharesSales sharesSale,Errors error,Model model) {
		if(error.hasErrors()) {
			return SELL;
		}
		try {
		salesService.sellStockProduct(sharesSale);
		return "redirect:/trade/tradesaleslist";
		}catch (Exception e) {
	      model.addAttribute("message",":(Sales Unsuccessful");
	      return SELL;
		}
	}
	@GetMapping("/updatesales")
    public String updateSalesForm(@RequestParam("id") int id, Model model) {
    	SharesSales sales = new SharesSales();
    	salesService.finBySalesId(id);
    	model.addAttribute("updatesales",sales);
    	return "update-sales-form";
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

