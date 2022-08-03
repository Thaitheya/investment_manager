package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.investment_manager.dto.StockProdectPurchaseDTO;
import com.chainsys.investment_manager.repository.SharePurchaseRepository;
import com.chainsys.investment_manager.repository.StockProductsRepository;
@Service
public class SharePurchasesService {
     

     @Autowired
     SharePurchaseRepository purchaseRepository;

     @Autowired
    private  StockProductsRepository stockProductsRepository;
     public StockProdectPurchaseDTO purchaselist(int id) {
          StockProdectPurchaseDTO dto=new StockProdectPurchaseDTO();
          dto.setStock_Product(stockProductsRepository.findById(id));
          dto.setSharesPurchase(purchaseRepository.findByStock_ProductStockId(id));
          return dto;
     }
}
