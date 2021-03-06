package fr.gtm.project.gensdubien.web;

import java.time.LocalDate;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fr.gtm.project.gensdubien.business.ProductService;
import fr.gtm.project.gensdubien.entity.Product;
@Controller
@RequestMapping("/produit")
public class ProductController {

	@Autowired
	private ProductService service;

	@RequestMapping("/list")
	public ModelAndView viewProducts() {
		ModelAndView mav = new ModelAndView("product");
		List<Product> products = new ArrayList<>();
		products = this.service.getAll();
		mav.addObject("listProduct", products);
		return mav;
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam Integer id) {
		
		this.service.delete(id);
		return "redirect:/produit/list.html" ;
		
	}
	@PostMapping ({"/create", "/update"})
	public String validateForm( 
			@RequestParam String name, 
			@RequestParam Integer numberLots,
			@RequestParam String productNumber, 
			@DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate expirationDate, 
	        @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate receptionDate, 
	        @RequestParam String section,
	    	@RequestParam(required=false) Integer id ) {
		
	
		Product product = new Product();
		if (id==null) {
			service.create(product);
		}else {
			product.setId(id);
			service.update(product);
		}
		product.setName(name);
		product.setSection(section);
		product.setProductNumber(productNumber);
		product.setNumberLots(numberLots);
		product.setReceptionDate(receptionDate);
		product.setExpirationDate(expirationDate);
		service.create(product);
		return "redirect:/produit/list.html";
	}
	
	
@RequestMapping("/edit")
public String edit(@RequestParam Integer id, RedirectAttributes ra) {
	Product product= service.read(id);
	ra.addFlashAttribute("product", product);
	return "redirect:/produit/list.html";
}
	
	
}
