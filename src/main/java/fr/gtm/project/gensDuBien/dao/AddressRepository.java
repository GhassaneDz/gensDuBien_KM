package fr.gtm.project.gensDuBien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.gtm.project.gensDuBien.entity.Address;

public interface AddressRepository extends JpaRepository<Address, Integer> {

}
