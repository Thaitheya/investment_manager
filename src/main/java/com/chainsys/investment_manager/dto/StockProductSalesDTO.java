package com.chainsys.investment_manager.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.investment_manager.model.SharesSales;
import com.chainsys.investment_manager.model.StockProduct;

public class StockProductSalesDTO {

	private StockProduct stockProduct;
    private List<SharesSales> sharesSales = new ArrayList<>();
	public StockProduct getStockProduct() {
		return stockProduct;
	}
	public void setStockProduct(StockProduct stockProduct) {
		this.stockProduct = stockProduct;
	}
	public List<SharesSales> getSharesSales() {
		return sharesSales;
	}
	public void setSharesSales(List<SharesSales> sharesSales) {
		this.sharesSales = sharesSales;
	}
    
	
}
