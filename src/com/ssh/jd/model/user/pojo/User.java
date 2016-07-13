package com.ssh.jd.model.user.pojo;

import java.util.Date;

/**
 * <p>Title:User</p>
 * <p>Description:用户实体类，对应数据库用户表</p>
 * @author 刘增刚
 * @date 2016年7月12日 下午12:38:29
 */
public class User {
	private String id;
	private String name;
	private String password;
	private String phone;
	private String address;
	private String email;
	private Date regDate; // 注册日期
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
	

}
