package com.chainsys.investment_manager.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.investment_manager.model.SharesPurchase;
@Repository
public interface SharePurchaseRepository extends JpaRepository<SharesPurchase, Integer>{
     List<SharesPurchase>  findByStock_ProductStockId(int id);
}
