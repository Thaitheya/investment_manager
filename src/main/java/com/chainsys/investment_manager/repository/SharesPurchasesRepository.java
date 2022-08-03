package com.chainsys.investment_manager.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.investment_manager.model.SharesPurchase;
@Repository
public interface SharesPurchasesRepository extends JpaRepository<SharesPurchase,Integer>{

     SharesPurchase save( SharesPurchase purchaseService);
     SharesPurchase findById(int id);
	void deleteById(int dr_id);
	List <SharesPurchase> findAll();

}
