package com.chainsys.investment_manager.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.model.Stock_Product;
import com.chainsys.investment_manager.repository.StockProductsRepository;

@Service
public class StockProductService {

	@Autowired
	StockProductsRepository stockProductsRepository;
	
	public List<Stock_Product> getAllStock() {
		List<Stock_Product> stock_Products = stockProductsRepository.findAll();
		return stock_Products;
	}
	public Stock_Product save(Stock_Product stock_Product) {
          return stockProductsRepository.save(stock_Product);
	}
	public Stock_Product findById(int id){
		return stockProductsRepository.findById(id);
	}
	public void deleteById(int id) {
		stockProductsRepository.deleteById(id);
	}
}
