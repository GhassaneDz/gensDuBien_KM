package fr.gtm.project.gensDuBien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.gtm.project.gensDuBien.entity.Volunteer;

public interface VolunteerRepository extends JpaRepository<Volunteer, Integer> {

}
