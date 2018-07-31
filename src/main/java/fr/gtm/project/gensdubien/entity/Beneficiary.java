package fr.gtm.project.gensdubien.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Beneficiary {
	@OneToOne
	@JoinColumn(name = "id_address", referencedColumnName = "id")
	private Address address;
	private String beneficiaryNumber;
	private LocalDate birthDate;
	private String firstname;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String lastname;
	private String memberFamilyNumber;
	private String tel;

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

	public String getMemberFamilyNumber() {
		return this.memberFamilyNumber;
	}

	public String getTel() {
		return this.tel;
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

	public void setMemberFamilyNumber(final String memberFamilyNumber) {
		this.memberFamilyNumber = memberFamilyNumber;
	}

	public void setTel(final String tel) {
		this.tel = tel;
	}

}
