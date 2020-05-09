package com.example.store;

public class TestCase {

	public static void main(String[] args) {
		int x1 = 0;
		int x2 = 1;
		for (int i=9; i>0; i--) {
			x1 = (x2 + 1) * 2;
			x2 = x1;
		}
		System.out.println(x1);
	}

}
