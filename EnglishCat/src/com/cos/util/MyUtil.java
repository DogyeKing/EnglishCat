package com.cos.util;

public class MyUtil {
	public static String getReplace(String code) {
		return code.replaceAll(" ", "&nbsp;").replaceAll("<", "&lt").replaceAll(">", "&gt").replaceAll("\n", "<br>");
	}

	// 모든 HTML 태그 제거
	// Junit은 add library로 build하고 Test 어노테이션을 붙인다
	// return X, static X, void (O), 매개변수가 없어야 된다.
}
