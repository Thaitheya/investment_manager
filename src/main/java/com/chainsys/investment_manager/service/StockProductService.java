package com.chainsys.investment_manager.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.model.SharesPurchase;
import com.chainsys.investment_manager.model.StockProduct;
import com.chainsys.investment_manager.repository.StockProductsRepository;

@Service
public class StockProductService {

	@Autowired
	StockProductsRepository stockProductsRepository;
	
	public List<StockProduct> getAllStock() {
		List<StockProduct> stock_Products = stockProductsRepository.findAll();
		return stock_Products;
	}
	public StockProduct save(StockProduct stock_Product) {
          return stockProductsRepository.save(stock_Product);
	}
	public void deleteById(int id) {
		stockProductsRepository.deleteById(id);
	}
     public StockProduct findById(int id) {
		return stockProductsRepository.findById(id);
     }

}
