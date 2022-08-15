package com.chainsys.investment_manager.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.investment_manager.model.SharesSales;
@Repository
public interface ShareSalesRepository extends JpaRepository<SharesSales,Integer>{
      SharesSales findById(int id);
}
