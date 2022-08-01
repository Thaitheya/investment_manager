package com.chainsys.investment_manager.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.model.SharesPurchases;
import com.chainsys.investment_manager.repository.SharesPurchasesRepository;
@Service
public class StockPurchaseService {
     
     	@Autowired
          SharesPurchasesRepository purchasesRepository;
public SharesPurchases addStockProduct(SharesPurchases purchaseService) {
     return purchasesRepository.save(purchaseService);
  }
  public void deleteById(int stock_id) {
       purchasesRepository.deleteById(stock_id);
  }
  public SharesPurchases findById(int id) {
       
       return  purchasesRepository.findById(id);
  }
    public List<SharesPurchases>getAllPurchasedStock() {
      List<SharesPurchases> sharesPurchases = purchasesRepository.findAll();
      return sharesPurchases;
    } 

}
