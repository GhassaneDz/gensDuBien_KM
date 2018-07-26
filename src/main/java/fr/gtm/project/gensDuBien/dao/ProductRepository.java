package fr.gtm.project.gensDuBien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.gtm.project.gensDuBien.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
