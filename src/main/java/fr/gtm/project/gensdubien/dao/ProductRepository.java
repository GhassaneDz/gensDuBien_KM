package fr.gtm.project.gensdubien.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.gtm.project.gensdubien.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

}
