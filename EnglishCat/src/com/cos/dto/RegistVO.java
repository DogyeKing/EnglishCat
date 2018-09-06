package com.cos.dto;

public class RegistVO {
	private String user_pid;
	private String user_id;
	private String user_pass;
	private String user_name;
	private String user_phone;
	private String user_mail;
	private String roadFullAddr;
	private String user_zipcode;
	private String salt;
	private String user_mail_avail_yn;
	private String auth_code;
	private String insert_dt;
	private String update_dt;
	private String update_pid;
	private String delete_yn;
	
	
	public String getUser_pid() {
		return user_pid;
	}
	public void setUser_pid(String user_pid) {
		this.user_pid = user_pid;
	}
	public String getUser_mail_avail_yn() {
		return user_mail_avail_yn;
	}
	public void setUser_mail_avail_yn(String user_mail_avail_yn) {
		this.user_mail_avail_yn = user_mail_avail_yn;
	}
	public String getUpdate_pid() {
		return update_pid;
	}
	public void setUpdate_pid(String update_pid) {
		this.update_pid = update_pid;
	}
	public String getRoadFullAddr() {
		return roadFullAddr;
	}
	public void setRoadFullAddr(String roadFullAddr) {
		this.roadFullAddr = roadFullAddr;
	}


	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
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
	public String getUser_zipcode() {
		return user_zipcode;
	}
	public void setUser_zipcode(String user_zipcode) {
		this.user_zipcode = user_zipcode;
	}
	public String getAuth_code() {
		return auth_code;
	}
	public void setAuth_code(String auth_code) {
		this.auth_code = auth_code;
	}
	public String getInsert_dt() {
		return insert_dt;
	}
	public void setInsert_dt(String insert_dt) {
		this.insert_dt = insert_dt;
	}
	public String getUpdate_dt() {
		return update_dt;
	}
	public void setUpdate_dt(String update_dt) {
		this.update_dt = update_dt;
	}
	public String getDelete_yn() {
		return delete_yn;
	}
	public void setDelete_yn(String delete_yn) {
		this.delete_yn = delete_yn;
	}
	public String getUser_mail() {
		return user_mail;
	}
	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}
	public String getuser_mail_avail_yn() {
		return user_mail_avail_yn;
	}
	public void setuser_mail_avail_yn(String user_mail_avail_yn) {
		this.user_mail_avail_yn = user_mail_avail_yn;
	}	
	
}
