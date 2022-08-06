package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.dto.StockProductSalesDTO;
import com.chainsys.investment_manager.model.SharesSales;
import com.chainsys.investment_manager.model.StockProduct;
import com.chainsys.investment_manager.repository.ShareSalesRepository;
import com.chainsys.investment_manager.repository.StockProductsRepository;

@Service
public class StockSalesService {

	@Autowired
	ShareSalesRepository repository;
	@Autowired
	StockProductsRepository productsRepository;

	public StockProductSalesDTO getProductSalesDTO(int id) {
		StockProduct pro = new StockProduct();
		StockProductSalesDTO dto = new StockProductSalesDTO();
		dto.setStockProduct(productsRepository.findById(id));
		dto.setSharesSales(repository.findAll());
		return dto;
	}
	public SharesSales sellStockProduct(SharesSales sharesSales) {
		return repository.save(sharesSales);
	}
}