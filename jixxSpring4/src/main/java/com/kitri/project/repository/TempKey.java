package com.kitri.project.repository;

import java.util.Random;

public class TempKey {
	private boolean lowerCheck;
	private int size;

	public int getKey(int size, boolean lowerCheck) {
		this.size = size;
		this.lowerCheck = lowerCheck;
		return init();
	}

	public int init() {
		Random ran = new Random();
		int ran2 = 0;
		while (ran2<=100000) {
			ran2 =ran.nextInt(1000000);
		}
		return ran2;
	}	
}