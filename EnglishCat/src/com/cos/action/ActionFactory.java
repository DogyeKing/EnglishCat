package com.cos.action;

import com.cos.controller.board.ReviewDetailAction;
import com.cos.controller.board.ReviewListAction;
import com.cos.controller.board.ReviewWriteAction;
import com.cos.controller.member.MemberIDCheckAction;
import com.cos.controller.member.MemberLoginAction;
import com.cos.controller.member.MemberLogoutAction;
import com.cos.controller.member.MemberRegisterAction;
import com.cos.controller.member.MemberUpdateAction;
import com.cos.controller.member.MemberUpdateProcAction;


public class ActionFactory {
	private static String naming = "ActionFactory : ";


	private static ActionFactory instance = new ActionFactory();


	private ActionFactory() {
	}


	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String cmd) {		
		if(cmd.equals("review_list")) {
			return new ReviewListAction();
		}else if(cmd.equals("member_register")) {
			return new MemberRegisterAction();
		}else if(cmd.equals("member_login")) {
			return new MemberLoginAction();
		}else if(cmd.equals("member_logout")) {
			return new MemberLogoutAction();
		}else if(cmd.equals("member_update")) {			
			return new MemberUpdateAction();
		}else if(cmd.equals("member_updateProc")) {
			return new MemberUpdateProcAction();
		}else if(cmd.equals("review_write")) {
			return new ReviewWriteAction();
		}else if(cmd.equals("member_idcheck")) {			
			return new MemberIDCheckAction();
		}else if(cmd.equals("review_detail")) {
			return new ReviewDetailAction();
		}
		return null;
	}
	
	
}





