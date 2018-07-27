package fr.gtm.project.gensdubien.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Product {
	@ManyToOne
	@JoinColumn(name = "id_beneficiary", referencedColumnName = "id")
	private Beneficiary beneficiary;
	private LocalDate expirationDate;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private Integer numberLots;
	private String productNumber;
	private LocalDate receptionDate;
	private String section;

	public Beneficiary getBeneficiary() {
		return this.beneficiary;
	}

	public LocalDate getExpirationDate() {
		return this.expirationDate;
	}

	public Integer getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public Integer getNumberLots() {
		return this.numberLots;
	}

	public String getProductNumber() {
		return this.productNumber;
	}

	public LocalDate getReceptionDate() {
		return this.receptionDate;
	}

	public String getSection() {
		return this.section;
	}

	public void setBeneficiary(final Beneficiary beneficiary) {
		this.beneficiary = beneficiary;
	}

	public void setExpirationDate(final LocalDate expirationDate) {
		this.expirationDate = expirationDate;
	}

	public void setId(final Integer id) {
		this.id = id;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public void setNumberLots(final Integer numberLots) {
		this.numberLots = numberLots;
	}

	public void setProductNumber(final String productNumber) {
		this.productNumber = productNumber;
	}

	public void setReceptionDate(final LocalDate receptionDate) {
		this.receptionDate = receptionDate;
	}

	public void setSection(final String section) {
		this.section = section;
	}

}
