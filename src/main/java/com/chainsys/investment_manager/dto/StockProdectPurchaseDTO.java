package com.chainsys.investment_manager.dto;
import java.util.ArrayList;
import java.util.List;
import com.chainsys.investment_manager.model.SharesPurchase;
import com.chainsys.investment_manager.model.StockProduct;

public class StockProdectPurchaseDTO {

	private StockProduct stockProduct;
	private List<SharesPurchase> sharesPurchases = new ArrayList<>();
	public StockProduct getStockProduct() {
		return stockProduct;
	}
	public void setStockProduct(StockProduct stockProduct) {
		this.stockProduct = stockProduct;
	}
	public List<SharesPurchase> getSharesPurchases() {
		return sharesPurchases;
	}
	public void setSharesPurchases(List<SharesPurchase> sharesPurchases) {
		this.sharesPurchases = sharesPurchases;
	}
	
	
     
     
    
    
}
