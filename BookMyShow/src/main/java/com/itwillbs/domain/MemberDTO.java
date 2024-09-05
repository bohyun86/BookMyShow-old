package com.itwillbs.domain;

public class MemberDTO {
	
	private String user_id;
	private String username;
	private String password;
	private String email;
	private String phone_number;
	private String name;
	private String user_role;
	private String created_at;
	private String updated_at;
//	private String hp2;
//	private String hp3;
//	private String zipcode;
	private String addr1;
@Override
	public String toString() {
		return "MemberDTO [user_id=" + user_id + ", username=" + username + ", password=" + password + ", email="
				+ email + ", phone_number=" + phone_number + ", name=" + name + ", user_role=" + user_role
				+ ", created_at=" + created_at + ", updated_at=" + updated_at + ", addr1=" + addr1 + "]";
	}
public String getUser_id() {
	return user_id;
}
public void setUser_id(String user_id) {
	this.user_id = user_id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone_number() {
	return phone_number;
}
public void setPhone_number(String phone_number) {
	this.phone_number = phone_number;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getUser_role() {
	return user_role;
}
public void setUser_role(String user_role) {
	this.user_role = user_role;
}
public String getCreated_at() {
	return created_at;
}
public void setCreated_at(String created_at) {
	this.created_at = created_at;
}
public String getUpdated_at() {
	return updated_at;
}
public void setUpdated_at(String updated_at) {
	this.updated_at = updated_at;
}
public String getAddr1() {
	return addr1;
}
public void setAddr1(String addr1) {
	this.addr1 = addr1;
}




}
