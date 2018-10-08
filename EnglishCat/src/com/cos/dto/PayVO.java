package com.cos.dto;

public class PayVO {
	private String user_pid;
	private String imp_uid;
	private String merchant_uid;
	private long paid_amount;
	private String apply_num;
	private String paid_date;
	private String month;
	private String times;
	private String minutes;
	public String getUser_pid() {
		return user_pid;
	}
	public void setUser_pid(String user_pid) {
		this.user_pid = user_pid;
	}
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public String getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public long getPaid_amount() {
		return paid_amount;
	}
	public void setPaid_amount(long paid_amount) {
		this.paid_amount = paid_amount;
	}
	public String getApply_num() {
		return apply_num;
	}
	public void setApply_num(String apply_num) {
		this.apply_num = apply_num;
	}
	public String getPaid_date() {
		return paid_date;
	}
	public void setPaid_date(String paid_date) {
		this.paid_date = paid_date;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	public String getMinutes() {
		return minutes;
	}
	public void setMinutes(String minutes) {
		this.minutes = minutes;
	}
	
}
