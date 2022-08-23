package com.chainsys.investment_manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.bussiness_logic.Logic;
import com.chainsys.investment_manager.dto.StockProductSalesDTO;
import com.chainsys.investment_manager.model.CustomerAccount;
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
	@Autowired
	StockProductService productService;
	@Autowired
	CustomerAccountService accountService;

	public StockProductSalesDTO getProductSalesDTO(int id) {
		StockProductSalesDTO dto = new StockProductSalesDTO();
		dto.setStockProduct(productsRepository.findById(id));
		dto.setSharesSales(repository.findAll());
		return dto;
	}

	public SharesSales sellStockProduct(SharesSales sharesSales) {
		StockProduct product = productService.findById(sharesSales.getStockId());
		product.setNoOfSharesInHand(product.getNoOfSharesInHand() + sharesSales.getQuantity());
		productService.save(product);
		CustomerAccount account = accountService.findByAdhaar(sharesSales.getAdhaarNumber());
		account.setSharesSold(sharesSales.getQuantity() + account.getSharesSold());
		accountService.addCustomer(account);
		CustomerAccount account2 = accountService.findByAdhaar(sharesSales.getAdhaarNumber());
		account2.setDepositedAmount(account2.getDepositedAmount() + sharesSales.getAmountOfInr());
		accountService.addCustomer(account2);
		CustomerAccount account3 = accountService.findByAdhaar(sharesSales.getAdhaarNumber());
		if(account3.getDepositedAmount() <= 0) {
			return null;
		}
		accountService.addCustomer(account3);
		return repository.save(sharesSales);

	}

	public List<SharesSales> getAllSoldStock() {
		return repository.findAll();
	}

	public SharesSales finBySalesId(int id) {
		return repository.findById(id);
	}
}