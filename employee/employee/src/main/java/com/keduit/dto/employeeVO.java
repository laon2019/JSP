package com.keduit.dto;

public class employeeVO {
	private int num;
	private String id;
	private String pass;
	private String name;
	private String gender;
	private String lev;
	private String phone;
	private String enter;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getLev() {
		return lev;
	}
	public void setLev(String lev) {
		this.lev = lev;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEnter() {
		return enter;
	}
	public void setEnter(String enter) {
		this.enter = enter;
	}
	@Override
	public String toString() {
		return "employeeVO [num=" + num + ", id=" + id + ", pass=" + pass + ", name=" + name + ", gender=" + gender
				+ ", lev=" + lev + ", phone=" + phone + ", enter=" + enter + "]";
	}
	
	
}
