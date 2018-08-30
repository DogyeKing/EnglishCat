package com.cos.action;

import com.cos.controller.board.BoardListAction;

public class ActionFactory {
	private static String naming = "ActionFactory : ";


	private static ActionFactory instance = new ActionFactory();


	private ActionFactory() {
	}


	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String cmd) {
		if(cmd.equals("reviewBoard")) {
			return new BoardListAction();
		}
		return null;
	}
	
	}





