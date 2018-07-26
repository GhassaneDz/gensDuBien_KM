package fr.gtm.project.gensDuBien.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Event {

	private LocalDate eventDate;
	private Integer eventNumber;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String type;
	@ManyToOne
	@JoinColumn(name = "id_event", referencedColumnName = "id")
	private Volunteer volenteer;

	public LocalDate getEventDate() {
		return this.eventDate;
	}

	public Integer getEventNumber() {
		return this.eventNumber;
	}

	public Integer getId() {
		return this.id;
	}

	public String getType() {
		return this.type;
	}

	public Volunteer getVolenteer() {
		return this.volenteer;
	}

	public void setEventDate(final LocalDate eventDate) {
		this.eventDate = eventDate;
	}

	public void setEventNumber(final Integer eventNumber) {
		this.eventNumber = eventNumber;
	}

	public void setId(final Integer id) {
		this.id = id;
	}

	public void setType(final String type) {
		this.type = type;
	}

	public void setVolenteer(final Volunteer volenteer) {
		this.volenteer = volenteer;
	}

}
