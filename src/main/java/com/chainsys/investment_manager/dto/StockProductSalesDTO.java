package com.chainsys.investment_manager.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.investment_manager.model.SharesSales;
import com.chainsys.investment_manager.model.Stock_Product;

public class StockProductSalesDTO {

	private Stock_Product stockProduct;
	private List<SharesSales> sharesSales = new ArrayList<>();
	public Stock_Product getStockProduct() {
		return stockProduct;
	}
	public void setStockProduct(Stock_Product stockProduct) {
		this.stockProduct = stockProduct;
	}
	public List<SharesSales> getSharesSales() {
		return sharesSales;
	}
	public void setSharesSales(List<SharesSales> sharesSales) {
		this.sharesSales = sharesSales;
	}
	
	
}
