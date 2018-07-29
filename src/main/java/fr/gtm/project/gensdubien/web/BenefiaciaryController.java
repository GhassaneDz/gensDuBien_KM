package fr.gtm.project.gensdubien.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.gtm.project.gensdubien.business.BeneficiaryService;
import fr.gtm.project.gensdubien.entity.Beneficiary;
@Controller
public class BenefiaciaryController {
	@Autowired
	private BeneficiaryService service;

	@RequestMapping("/beneficiaire")
	public ModelAndView viewBeneficiaries() {
		ModelAndView mav = new ModelAndView("beneficiary");
		List<Beneficiary> beneficiaries = new ArrayList<>();
		beneficiaries = this.service.getAll();
		mav.addObject("listBeneficiary", beneficiaries);
		return mav;
	}
}
