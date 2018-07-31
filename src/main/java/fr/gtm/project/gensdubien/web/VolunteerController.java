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

import fr.gtm.project.gensdubien.business.VolunteerService;
import fr.gtm.project.gensdubien.entity.Volunteer;

@Controller
@RequestMapping("/benevole")
public class VolunteerController {

	@Autowired
	private VolunteerService service;

	@RequestMapping("/list")
	public ModelAndView viewVolunteers() {
		ModelAndView mav = new ModelAndView("volunteer");
		List<Volunteer> volunteers = new ArrayList<>();
		volunteers = this.service.getAll();
		mav.addObject("listVolunteer", volunteers);
		return mav;
	}



	@RequestMapping("/delete")
	public String delete(@RequestParam Integer id) {

		this.service.delete(id);
		return "redirect:/benevole/list.html";
	}

	
	@PostMapping({"/create", "/update"})
	public String validateForm(@RequestParam String firstname, 
			@RequestParam String lastname,@RequestParam String tel,
			@DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate birthDate,
			@RequestParam String volunteerNumber,
			@RequestParam String email,
			@RequestParam(required=false) Integer id) {

		Volunteer volunteer = new Volunteer();
		
		  if (id==null) {
			     service.create(volunteer);
		      }else {
		    	  
		    	  volunteer.setId(id);
		    	  service.update(volunteer);
		      }
		volunteer.setBirthDate(birthDate);
		volunteer.setFirstname(firstname);
		volunteer.setLastname(lastname);
		volunteer.setVolunteerNumber(volunteerNumber);
		volunteer.setTel(tel);
		volunteer.setEmail(email);
		service.create(volunteer);
		return "redirect:/benevole/list.html";
	}
	
	@RequestMapping("/edit")
	public String edit(@RequestParam Integer id, RedirectAttributes ra) {
		Volunteer volunteer=service.read(id);
		ra.addFlashAttribute("volunteer", volunteer);
		return "redirect:/benevole/list.html";
	}
}
