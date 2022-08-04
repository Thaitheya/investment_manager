package com.chainsys.investment_manager.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.investment_manager.model.Stock_Product;
@Repository
public interface StockProductsRepository extends JpaRepository<Stock_Product, Integer>{
     Stock_Product save(Stock_Product pro);
     void deleteById(int id);
     Stock_Product findById(int id);
     
}
