package com.chainsys.investment_manager.businesslogics;

public class Logic {

	
	public static int buyStock(int stock, int removeStock) {
		return stock + removeStock;
		
	}
	
	public static int sellStock(int stock, int addStock) {
		return stock + addStock;
	}
}
