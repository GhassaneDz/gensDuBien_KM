package fr.gtm.project.gensdubien.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.gtm.project.gensdubien.business.ProductService;
import fr.gtm.project.gensdubien.entity.Product;
@Controller
public class ProductController {

	@Autowired
	private ProductService service;

	@RequestMapping("/produit")
	public ModelAndView viewProducts() {
		ModelAndView mav = new ModelAndView("product");
		List<Product> products = new ArrayList<>();
		products = this.service.getAll();
		mav.addObject("listProduct", products);
		return mav;
	}
}
