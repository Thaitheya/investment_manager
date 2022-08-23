package com.chainsys.investment_manager.bussiness_logic;

public class Logic {

	private Logic() {
		
	}
	
	public static int getAmountNotEqualsToZero(float amount) {
		if(amount <= 0) {
			return 0;
		}
		return 1;
	}
}
