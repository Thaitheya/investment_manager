package com.chainsys.investment_manager.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.investment_manager.model.SharesPurchase;

@Repository
public interface SharesPurchasesRepository extends JpaRepository<SharesPurchase,Integer>{
	List<SharesPurchase> findAll();
	SharesPurchase save(SharesPurchase sp);
	SharesPurchase findById(int id);
	void deleteById(int id);
	
    
}
