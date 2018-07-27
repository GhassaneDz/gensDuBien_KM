package fr.gtm.project.gensdubien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.gtm.project.gensdubien.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
