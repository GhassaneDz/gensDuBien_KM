package fr.gtm.project.gensDuBien.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {

	@Column
	private LocalDate expirationDate;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column
	private String name;
	@Column
	private Integer numberLots;
	@Column
	private Integer productNumber;
	@Column
	private LocalDate receptionDate;
	@Column
	private String section;

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

	public Integer getProductNumber() {
		return this.productNumber;
	}

	public LocalDate getReceptionDate() {
		return this.receptionDate;
	}

	public String getSection() {
		return this.section;
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

	public void setProductNumber(final Integer productNumber) {
		this.productNumber = productNumber;
	}

	public void setReceptionDate(final LocalDate receptionDate) {
		this.receptionDate = receptionDate;
	}

	public void setSection(final String section) {
		this.section = section;
	}

}
