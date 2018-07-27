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
public class Event {

	private LocalDate eventDate;
	private String eventNumber;
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String type;
	@ManyToOne
	@JoinColumn(name = "id_volunteer", referencedColumnName = "id")
	private Volunteer volunteer;

	public LocalDate getEventDate() {
		return this.eventDate;
	}

	public String getEventNumber() {
		return this.eventNumber;
	}

	public Integer getId() {
		return this.id;
	}

	public String getType() {
		return this.type;
	}

	public Volunteer getVolunteer() {
		return this.volunteer;
	}

	public void setEventDate(final LocalDate eventDate) {
		this.eventDate = eventDate;
	}

	public void setEventNumber(final String eventNumber) {
		this.eventNumber = eventNumber;
	}

	public void setId(final Integer id) {
		this.id = id;
	}

	public void setType(final String type) {
		this.type = type;
	}

	public void setVolunteer(final Volunteer volunteer) {
		this.volunteer = volunteer;
	}

}
