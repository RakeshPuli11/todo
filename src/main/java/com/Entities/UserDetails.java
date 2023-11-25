package com.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class UserDetails {
	@Id
	@Column(name="username",unique = true)
	private String username;
	@Column(name="password")
	private String password;
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
	public UserDetails(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public UserDetails() {
		super();
	}
	@Override
	public String toString() {
		return "UserDetails [username=" + username + ", password=" + password + "]";
	}
	
	
}
