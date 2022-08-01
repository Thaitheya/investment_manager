package com.chainsys.investment_manager.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.investment_manager.model.UserRegistration;
@Repository
public interface User_registrationRepository extends JpaRepository<UserRegistration,Integer> {
     
}
