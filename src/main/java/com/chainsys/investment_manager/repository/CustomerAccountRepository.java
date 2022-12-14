package com.chainsys.investment_manager.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.investment_manager.model.CustomerAccount;
@Repository
public interface CustomerAccountRepository extends JpaRepository<CustomerAccount,Integer>{
     CustomerAccount findByAdhaarNumber(String adhaar);
     CustomerAccount findById(int id);
	CustomerAccount save(CustomerAccount account);
}