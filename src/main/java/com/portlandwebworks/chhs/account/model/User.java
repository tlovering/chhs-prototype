package com.portlandwebworks.chhs.account.model;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 *
 * @author nick
 */
public class User {
	
	private String firstName;
	private String lastName;
	private String email;
	private Address address;
	
	@JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
	private String originalPassword;
	@JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
	private String newPassword;
	@JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
	private String newPasswordConfirmation;

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

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getOriginalPassword() {
		return originalPassword;
	}

	public void setOriginalPassword(String originalPassword) {
		this.originalPassword = originalPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getNewPasswordConfirmation() {
		return newPasswordConfirmation;
	}

	public void setNewPasswordConfirmation(String newPasswordConfirmation) {
		this.newPasswordConfirmation = newPasswordConfirmation;
	}

}
