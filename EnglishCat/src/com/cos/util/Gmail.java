package com.cos.util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator{

	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("englishcat5600", "bitc5600");
	}
	
}
