package fr.gtm.project.gensDuBien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.gtm.project.gensDuBien.entity.Event;

public interface EventRepository extends JpaRepository<Event, Integer> {

}
