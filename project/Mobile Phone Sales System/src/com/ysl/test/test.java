package com.ysl.test;

import com.ndktools.javamd5.Mademd5;

public class test {

	public static void main(String []args){
		String password="19921224";
		Mademd5 md=new Mademd5();
		String jiami=md.toMd5(password);
		System.out.println(jiami);
	}
}
