package com.example.Boarda.model;

public class BoardVO {
	private int num;	
	private String userName;
	private String memo;
	private String password;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", userName=" + userName + ", memo=" + memo + ", password=" + password + "]";
	}
}
