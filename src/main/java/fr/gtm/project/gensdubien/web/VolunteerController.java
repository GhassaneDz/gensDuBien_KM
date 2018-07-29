package fr.gtm.project.gensdubien.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.gtm.project.gensdubien.business.VolunteerService;
import fr.gtm.project.gensdubien.entity.Volunteer;

@Controller
public class VolunteerController {

	@Autowired
	private VolunteerService service;
	
	@RequestMapping("/benevole")
	public ModelAndView viewVolunteers() {
		ModelAndView mav = new ModelAndView("volunteer");
		List<Volunteer> volunteers = new ArrayList<>();
		volunteers = this.service.getAll();
		mav.addObject("listVolunteer", volunteers);
		return mav;
	}
}
