package com.chainsys.investment_manager.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.investment_manager.model.UserRegistration;
@Repository
public interface UserRegistrationRepository extends JpaRepository<UserRegistration,Integer> {
     UserRegistration save(UserRegistration registration);
     
}
