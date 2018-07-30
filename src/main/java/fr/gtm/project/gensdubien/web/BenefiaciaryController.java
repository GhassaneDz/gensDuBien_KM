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

import fr.gtm.project.gensdubien.business.BeneficiaryService;
import fr.gtm.project.gensdubien.entity.Beneficiary;
@Controller
@RequestMapping("/beneficiaire")
public class BenefiaciaryController {
	
	@Autowired
	private BeneficiaryService service;

	@RequestMapping("/list")
	public ModelAndView viewBeneficiaries() {
		ModelAndView mav = new ModelAndView("beneficiary");
		List<Beneficiary> beneficiaries = new ArrayList<>();
		beneficiaries = this.service.getAll();
		mav.addObject("listBeneficiary", beneficiaries);
		return mav;
	}
	
	
	@RequestMapping("/delete")
	public String delete(@RequestParam Integer id) {
		
		this.service.delete(id);
		return "redirect:/beneficiaire/list.html" ;
	}
	@PostMapping ("/create")
	public String validateForm(@RequestParam String memeberFamilyNumber, @RequestParam String firstname,
			@RequestParam String lastname, @RequestParam String tel, String beneficiaryNumber,
			@DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate birthDate) {
	
		Beneficiary beneficiary = new Beneficiary();
		beneficiary .setBirthDate(birthDate);
		beneficiary .setFirstname(firstname);
		beneficiary .setLastname(lastname);
		beneficiary .setMemeberFamilyNumber(memeberFamilyNumber);;
		beneficiary .setTel(tel);
		beneficiary.setBeneficiaryNumber(beneficiaryNumber);
		service.create(beneficiary);
		return "redirect:/beneficiaire/list.html";
	}
}
