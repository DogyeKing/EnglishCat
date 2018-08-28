package com.cos.action;

public class ActionFactory {
	private static String naming = "ActionFactory : ";

	// 싱글톤 객체 생성 - static으로 생성
	// static으로 만들면 JVM 시작시 바로 만들어진다.
	// static으로 만들면 class 변수가 저장
	// 멤버변수가 되려면 heap에 저장이 되어야하는데
	// static이 붙어 있으면 멤버 변수가 될수 없다.
	private static ActionFactory instance = new ActionFactory();

	// 싱글톤 객체생성을 위해 외부에서 객체 생성 방지를 위해
	// 생성자를 private로 선언한다.
	private ActionFactory() {
	}

	// static으로 선언된 instance 변수를
	// 호출하기 위해 만들어진 public 메소드
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String cmd) {
		if(cmd.equals("test")) {
			return new TestAction();
		}
		return null;
	}
}




