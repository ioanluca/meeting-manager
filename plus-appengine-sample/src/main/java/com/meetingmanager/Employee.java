package com.meetingmanager;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Ignore;
import com.googlecode.objectify.annotation.Index;

import java.util.List;

@Entity
public class Employee {
	public static String firstName = "null";
	@Index private String lastName;
	private String userName;
	@Id private String ID;
	@Ignore private List<Task> tasks;
	
	public Employee() {
		
		
		
	}
	
	public Employee(String firstName, String lastName, String userName, String ID) {
		super();
		Employee.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.ID = ID;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		Employee.firstName = firstName;
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
