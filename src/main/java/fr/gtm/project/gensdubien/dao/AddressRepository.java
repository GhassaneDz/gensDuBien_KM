package fr.gtm.project.gensdubien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.gtm.project.gensdubien.entity.Address;

public interface AddressRepository extends JpaRepository<Address, Integer> {

}
