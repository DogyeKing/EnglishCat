package com.cos.action;

import com.cos.controller.board.BoardListAction;
<<<<<<< HEAD
import com.cos.controller.member.MemberRegisterAction;
=======
import com.cos.controller.board.BoardWriteAction;
>>>>>>> c1e7f4d8134547333c191a3450fac61893eab378

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
<<<<<<< HEAD
		}else if(cmd.equals("member_register")) {
			return new MemberRegisterAction();
=======
		}else if(cmd.equals("member_regist")){
			
		}else if(cmd.equals("board_write")) {
			return new BoardWriteAction();
>>>>>>> c1e7f4d8134547333c191a3450fac61893eab378
		}
		return null;
	}
	
	}





