package com.chainsys.investment_manager.dto;

import lombok.Data;

@Data
public class StockDto {
     private String adhaarNumber;
     private String StockId;
     private String StockName;
     private String noOfSharesInHand;
     private String lastTransactionalDate;
     private String lastTransactionalValue;
}
