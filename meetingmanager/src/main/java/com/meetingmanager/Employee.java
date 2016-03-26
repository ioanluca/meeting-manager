package com.meetingmanager;

import java.util.List;

public class Employee {
	private String firstName;
	private String lastName;
	private String userName;
	private int ID;
	private List<Task> tasks;
	
	public Employee(String firstName, String lastName, String userName, int iD) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		ID = iD;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}
	

}
