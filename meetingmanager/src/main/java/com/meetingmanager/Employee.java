package com.meetingmanager;

import java.util.List;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Ignore;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Parent;

@Entity
public class Employee {
	private String firstName;
	@Index private String lastName;
	private String userName;
	@Id private String ID;
	@Ignore private List<Task> tasks;
	
	public Employee() {
		
		
		
	}
	
	public Employee(String firstName, String lastName, String userName, String ID) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.ID = ID;
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


	
	public void addTask(){
		
		
	}

}
