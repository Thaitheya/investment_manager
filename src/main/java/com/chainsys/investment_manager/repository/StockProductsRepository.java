package com.chainsys.investment_manager.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.investment_manager.model.StockProduct;
@Repository
public interface StockProductsRepository extends JpaRepository<StockProduct, Integer>{
     StockProduct save(StockProduct pro);
     void deleteById(int id);
     StockProduct findById(int id);
     List<StockProduct> findAll();
     
}
