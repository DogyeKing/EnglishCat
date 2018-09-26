package com.cos.action;

import com.cos.controller.board.AjaxAction;
import com.cos.controller.board.PayAction;
import com.cos.controller.board.ReviewDeleteAction;
import com.cos.controller.board.ReviewDetailAction;
import com.cos.controller.board.ReviewListAction;
import com.cos.controller.board.ReviewUpdateAction;
import com.cos.controller.board.ReviewUpdateProcAction;
import com.cos.controller.board.ReviewWriteAction;
import com.cos.controller.board.ReviewWriteProcAction;
import com.cos.controller.member.MemberApplicationAction;
import com.cos.controller.member.MemberFreeTestAction;
import com.cos.controller.member.MemberIDCheckAction;
import com.cos.controller.member.MemberLoginAction;
import com.cos.controller.member.MemberLogoutAction;
import com.cos.controller.member.MemberRegisterAction;
import com.cos.controller.member.MemberScoreAction;
import com.cos.controller.member.MemberUpdateAction;
import com.cos.controller.member.MemberUpdateProcAction;
import com.cos.controller.member.MemberPayAction;

public class ActionFactory {
	private static String naming = "ActionFactory : ";

	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String cmd) {
		if (cmd.equals("review_list")) {
			return new ReviewListAction();
		} else if (cmd.equals("member_register")) {
			return new MemberRegisterAction();
		} else if (cmd.equals("member_login")) {
			return new MemberLoginAction();
		} else if (cmd.equals("member_logout")) {
			return new MemberLogoutAction();
		} else if (cmd.equals("member_update")) {
			return new MemberUpdateAction();
		} else if (cmd.equals("member_updateProc")) {
			return new MemberUpdateProcAction();
		} else if (cmd.equals("review_write")) {
			return new ReviewWriteAction();
		} else if (cmd.equals("member_idcheck")) {
			return new MemberIDCheckAction();
		} else if (cmd.equals("review_detail")) {
			return new ReviewDetailAction();
		} else if (cmd.equals("review_update")) {
			return new ReviewUpdateAction();
		} else if (cmd.equals("review_updateProc")) {
			return new ReviewUpdateProcAction();
		} else if (cmd.equals("review_delete")) {
			return new ReviewDeleteAction();
		} else if (cmd.equals("ajax")) {
			return new AjaxAction();
		} else if (cmd.equals("review_writeProc")) {
			return new ReviewWriteProcAction();
		} else if (cmd.equals("member_score")) {
			return new MemberScoreAction();  
		} else if (cmd.equals("member_FreeTest")) {
			return new MemberFreeTestAction();  
		} else if (cmd.equals("board_pay")) {
			return new PayAction();
		} else if (cmd.equals("member_payment")) {
			return new MemberPayAction();
		} else if (cmd.equals("member_application")) {
			return new MemberApplicationAction();
		} else if (cmd.equals("member_levelTest")) {
			return new MemberScoreAction();
		}
		return null;
	}

}
