package tn.itbs.beans;

import java.util.ArrayList;

import tn.itbs.beans.*;
//@Entity
//@Table(name="product")
public class User {
	
	//@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	//@Column
	private String name;
	//@Column
	private String email;
	private String username;
	private String password;
	private String address;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Object fetchadd(ArrayList<User> userList, String username) {
		for(User u : userList) {
			if(u.getUsername().equals(username))
				return u.getAddress();
		}
		return "";
	}
	public Object fetchemail(ArrayList<User> userList, String username) {
		for(User u : userList) {
			if(u.getUsername().equals(username))
				return u.getEmail();
		}
		return "";
	}
	public Object fetchname(ArrayList<User> userList, String username) {
		for(User u : userList) {
			if(u.getUsername().equals(username))
				return u.getName();
		}
		return "";
	}
	
	
	
}
