package fr.gtm.project.gensdubien.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Address {

	private String city;
	private String country;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String mainLine;
	private String optionalLine;
	private String postalCode;

	public String getCity() {
		return this.city;
	}

	public String getCountry() {
		return this.country;
	}

	public Integer getId() {
		return this.id;
	}

	public String getMainLine() {
		return this.mainLine;
	}

	public String getOptionalLine() {
		return this.optionalLine;
	}

	public String getPostalCode() {
		return this.postalCode;
	}

	public void setCity(final String city) {
		this.city = city;
	}

	public void setCountry(final String country) {
		this.country = country;
	}

	public void setId(final Integer id) {
		this.id = id;
	}

	public void setMainLine(final String mainLine) {
		this.mainLine = mainLine;
	}

	public void setOptionalLine(final String optionalLine) {
		this.optionalLine = optionalLine;
	}

	public void setPostalCode(final String postalCode) {
		this.postalCode = postalCode;
	}

}
