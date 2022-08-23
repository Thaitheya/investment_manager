package com.chainsys.investment_manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.dto.StockProdectPurchaseDTO;
import com.chainsys.investment_manager.model.CustomerAccount;
import com.chainsys.investment_manager.model.SharesPurchase;
import com.chainsys.investment_manager.model.StockProduct;
import com.chainsys.investment_manager.repository.SharesPurchasesRepository;
import com.chainsys.investment_manager.repository.StockProductsRepository;
@Service
public class SharePurchasesService {
	@Autowired
	SharesPurchasesRepository purchasesRepository;

	@Autowired
	StockProductsRepository productsRepository;
	@Autowired
	StockProductService stockProductService;
	@Autowired
	CustomerAccountService customerAccountService;
	
	public StockProdectPurchaseDTO getStockProdectPurchaseDTO(int id) {
		StockProdectPurchaseDTO dto = new StockProdectPurchaseDTO();
		dto.setStockProduct(productsRepository.findById(id));
		dto.setSharesPurchases(purchasesRepository.findAll());
		return dto;

	}
	

	public SharesPurchase addStockProduct(SharesPurchase purchaseService) {
		StockProduct stockProduct= stockProductService.findById(purchaseService.getStockId());
		stockProduct.setNoOfSharesInHand(stockProduct.getNoOfSharesInHand()-purchaseService.getQuantity());
		stockProductService.save(stockProduct);
		CustomerAccount account = customerAccountService.findByAdhaar(purchaseService.getAdhaarNumber());
		account.setSharesPurchased(purchaseService.getQuantity()+account.getSharesPurchased());
		customerAccountService.addCustomer(account);
		CustomerAccount account2 = customerAccountService.findByAdhaar(purchaseService.getAdhaarNumber());
		account2.setDepositedAmount(account2.getDepositedAmount()-purchaseService.getAmountOfInr());
		return purchasesRepository.save(purchaseService);
		
	}

	public void deleteById(int stockid) {
		purchasesRepository.deleteById(stockid);
	}

	public SharesPurchase findById(int id) {

		return purchasesRepository.findById(id);
	}

	public List<SharesPurchase> getAllPurchasedStock() {
		return purchasesRepository.findAll();
	}


	public SharesPurchase findByAdhaarNumber(String adhaar) {
		
		return purchasesRepository.findByAdhaarNumber(adhaar);
	}
	
}
