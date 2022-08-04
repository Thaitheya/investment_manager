package com.chainsys.investment_manager.dto;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.investment_manager.model.SharesPurchase;
import com.chainsys.investment_manager.model.Stock_Product;

public class StockProdectPurchaseDTO {
	private List<SharesPurchase> sharesPurchases = new ArrayList<>();
	@Autowired
	private Stock_Product stock_Product;
	
	public List<SharesPurchase> getSharesPurchases() {
		return sharesPurchases;
	}
	public void setSharesPurchases(List<SharesPurchase> sharesPurchases) {
		this.sharesPurchases = sharesPurchases;
	}
	public Stock_Product getStock_Product() {
		return stock_Product;
	}
	public void setStock_Product(Stock_Product stock_Product) {
		this.stock_Product = stock_Product;
	}
	
     
     
     
    
    
}
