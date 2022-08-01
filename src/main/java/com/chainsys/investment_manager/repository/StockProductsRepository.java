package com.chainsys.investment_manager.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.investment_manager.model.Stock_Product;
@Repository
public interface StockProductsRepository extends JpaRepository<Stock_Product, Integer>{
     Stock_Product findById(int id);
     Stock_Product save(Stock_Product product);
     void deleteById(int i);
     List<Stock_Product> findAll();





     
}
