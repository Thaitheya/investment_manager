package com.chainsys.investment_manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.dto.StockProdectPurchaseDTO;
import com.chainsys.investment_manager.model.SharesPurchase;
import com.chainsys.investment_manager.model.Stock_Product;
import com.chainsys.investment_manager.repository.SharesPurchasesRepository;
import com.chainsys.investment_manager.repository.StockProductsRepository;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Service
public class SharePurchasesService {
	@Autowired
	SharesPurchasesRepository purchasesRepository;

	@Autowired
	StockProductsRepository productsRepository;

	public StockProdectPurchaseDTO getStockProdectPurchaseDTO(int id) {
		Stock_Product pro = new Stock_Product();
		StockProdectPurchaseDTO dto = new StockProdectPurchaseDTO();
		dto.setStock_Product(productsRepository.findById(id));
		dto.setSharesPurchases(purchasesRepository.findAll());
		return dto;

	}
	

	public SharesPurchase addStockProduct(SharesPurchase purchaseService) {
		return purchasesRepository.save(purchaseService);
	}

	public void deleteById(int stock_id) {
		purchasesRepository.deleteById(stock_id);
	}

	public SharesPurchase findById(int id) {

		return purchasesRepository.findById(id);
	}

	public List<SharesPurchase> getAllPurchasedStock() {
		List<SharesPurchase> sharesPurchases = purchasesRepository.findAll();
		return sharesPurchases;
	}

}
