package com.chainsys.investment_manager.dto;

import java.util.List;

import com.chainsys.investment_manager.model.SharesPurchase;
import com.chainsys.investment_manager.model.Stock_Product;

import lombok.Data;
@Data
public class StockProdectPurchaseDTO {
     
     private List<SharesPurchase> sharesPurchase;
     private Stock_Product stock_Product;
}
