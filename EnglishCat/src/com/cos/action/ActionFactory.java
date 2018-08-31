package com.cos.action;

import com.cos.controller.board.BoardListAction;
import com.cos.controller.board.BoardWriteAction;

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
		}else if(cmd.equals("member_regist")){
			
		}else if(cmd.equals("board_write")) {
			return new BoardWriteAction();
		}
		return null;
	}
	
	}





