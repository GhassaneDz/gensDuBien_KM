package fr.gtm.project.gensdubien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.gtm.project.gensdubien.entity.Event;

public interface EventRepository extends JpaRepository<Event, Integer> {

}
