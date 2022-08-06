package com.chainsys.investment_manager.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.investment_manager.model.Transactions;

@Repository
public interface TransactionsRepository extends JpaRepository<Transactions,Long>{

	List<Transactions> findAll();
}
