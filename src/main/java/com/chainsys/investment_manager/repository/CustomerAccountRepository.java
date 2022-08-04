package com.chainsys.investment_manager.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chainsys.investment_manager.model.CustomerAccount;

public interface CustomerAccountRepository extends JpaRepository<CustomerAccount,Integer>{
     
}
