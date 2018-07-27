package fr.gtm.project.gensDuBien.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Volunteer {
	@OneToOne
	@JoinColumn(name = "address_id", referencedColumnName = "id")
	private Address address;
	private LocalDate birthDate;
	private String email;
	private String firstname;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String lastname;
	private String login;
	private String password;
	private String tel;
	private String volunteerNumber;

	public Address getAddress() {
		return this.address;
	}

	public LocalDate getBirthDate() {
		return this.birthDate;
	}

	public String getEmail() {
		return this.email;
	}

	public String getFirstname() {
		return this.firstname;
	}

	public Integer getId() {
		return this.id;
	}

	public String getLastname() {
		return this.lastname;
	}

	public String getLogin() {
		return this.login;
	}

	public String getPassword() {
		return this.password;
	}

	public String getTel() {
		return this.tel;
	}

	public String getVolunteerNumber() {
		return this.volunteerNumber;
	}

	public void setAddress(final Address address) {
		this.address = address;
	}

	public void setBirthDate(final LocalDate birthDate) {
		this.birthDate = birthDate;
	}

	public void setEmail(final String email) {
		this.email = email;
	}

	public void setFirstname(final String firstname) {
		this.firstname = firstname;
	}

	public void setId(final Integer id) {
		this.id = id;
	}

	public void setLastname(final String lastname) {
		this.lastname = lastname;
	}

	public void setLogin(final String login) {
		this.login = login;
	}

	public void setPassword(final String password) {
		this.password = password;
	}

	public void setTel(final String tel) {
		this.tel = tel;
	}

	public void setVolunteerNumber(final String volunteerNumber) {
		this.volunteerNumber = volunteerNumber;
	}

}