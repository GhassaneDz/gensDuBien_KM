package fr.gtm.project.gensdubien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.gtm.project.gensdubien.entity.Volunteer;

public interface VolunteerRepository extends JpaRepository<Volunteer, Integer> {

	Volunteer findOneByLogin(final String login);

}
