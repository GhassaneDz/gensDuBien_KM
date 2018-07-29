package fr.gtm.project.gensdubien.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.gtm.project.gensdubien.entity.Volunteer;

@Repository
public interface VolunteerRepository extends JpaRepository<Volunteer, Integer> {

	Volunteer findOneByLogin(final String login);

}
