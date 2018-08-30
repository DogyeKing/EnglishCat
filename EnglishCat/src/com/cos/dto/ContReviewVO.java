package com.cos.dto;

public class ContReviewVO {
	private String cont_id;
	private String cont_title;
	private String cont_content;
	private String user_id;
	
	private int cont_read_cnt;
	private int cont_like_cnt;
	private int cont_dis_cnt;
	private String insert_dt;
	private String update_dt;
	private String delete_yn;
	
	
	public String getCont_id() {
		return cont_id;
	}
	public void setCont_id(String cont_id) {
		this.cont_id = cont_id;
	}
	public String getCont_title() {
		return cont_title;
	}
	public void setCont_title(String cont_title) {
		this.cont_title = cont_title;
	}
	public String getCont_content() {
		return cont_content;
	}
	public void setCont_content(String cont_content) {
		this.cont_content = cont_content;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getCont_read_cnt() {
		return cont_read_cnt;
	}
	public void setCont_read_cnt(int cont_read_cnt) {
		this.cont_read_cnt = cont_read_cnt;
	}
	public int getCont_like_cnt() {
		return cont_like_cnt;
	}
	public void setCont_like_cnt(int cont_like_cnt) {
		this.cont_like_cnt = cont_like_cnt;
	}
	public int getCont_dis_cnt() {
		return cont_dis_cnt;
	}
	public void setCont_dis_cnt(int cont_dis_cnt) {
		this.cont_dis_cnt = cont_dis_cnt;
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

	
	
	
	
	
}
