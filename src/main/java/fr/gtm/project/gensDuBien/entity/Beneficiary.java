package fr.gtm.project.gensDuBien.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Beneficiary {
	@Column
	private Address address;
	@Column
	private String beneficiaryNumber;
	@Column
	private LocalDate birthDate;
	@Column
	private String firstname;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column
	private String lastname;
	@Column
	private Integer memeberFamilyNumber;

	public Address getAddress() {
		return this.address;
	}

	public String getBeneficiaryNumber() {
		return this.beneficiaryNumber;
	}

	public LocalDate getBirthDate() {
		return this.birthDate;
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

	public Integer getMemeberFamilyNumber() {
		return this.memeberFamilyNumber;
	}

	public void setAddress(final Address address) {
		this.address = address;
	}

	public void setBeneficiaryNumber(final String beneficiaryNumber) {
		this.beneficiaryNumber = beneficiaryNumber;
	}

	public void setBirthDate(final LocalDate birthDate) {
		this.birthDate = birthDate;
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

	public void setMemeberFamilyNumber(final Integer memeberFamilyNumber) {
		this.memeberFamilyNumber = memeberFamilyNumber;
	}

}
