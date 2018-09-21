package com.cos.dto;

public class PayVO {
	private String user_id;
	private String user_name;
	private String user_phone;
	private String user_mail;
	private String pay_duration;
	private String pay_dt;
	private int pay_amount;

	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_mail() {
		return user_mail;
	}
	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}
	public String getPay_duration() {
		return pay_duration;
	}
	public void setPay_duration(String pay_duration) {
		this.pay_duration = pay_duration;
	}
	public String getPay_dt() {
		return pay_dt;
	}
	public void setPay_dt(String pay_dt) {
		this.pay_dt = pay_dt;
	}
	public int getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(int pay_amount) {
		this.pay_amount = pay_amount;
	}	
}
