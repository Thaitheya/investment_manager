package com.chainsys.investment_manager.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.investment_manager.model.StockProduct;
import com.chainsys.investment_manager.repository.StockProductsRepository;

@Service
public class StockProductService {

	@Autowired
	StockProductsRepository stockProductsRepository;
	
	public List<StockProduct> getAllStock() {
		return stockProductsRepository.findAll();
	}
	public StockProduct save(StockProduct stockProduct) {
          return stockProductsRepository.save(stockProduct);
	}
	public void deleteById(int id) {
		stockProductsRepository.deleteById(id);
	}
     public StockProduct findById(int id) {
		return stockProductsRepository.findById(id);
     }

}
