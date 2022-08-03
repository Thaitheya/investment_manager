package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.model.SharesSales;
import com.chainsys.investment_manager.repository.ShareSalesRepository;

@Service
public class StockSalesService {
     
@Autowired
ShareSalesRepository repository;

     public SharesSales addStockProduct(SharesSales sharesSales) {
          return repository.save(sharesSales);
}

}