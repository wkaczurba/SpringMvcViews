package com.springmvc;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

public class User {
	
	@NotNull
	@Size(min=5, max=16, message="{firstName.size}")
	private String firstName;
	
	@NotNull
	@Size(min=5, max=25, message="{lastName.size}")
	private String lastName;
	
	@NotNull
	@Email(message="{email.valid}")
	private String email;
	
	public User() {}
	public User(String firstName, String lastName, String email) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
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
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}	
	
	// TODO: equals, hashCode
	
}
