package fr.gtm.project.gensdubien.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import fr.gtm.project.gensdubien.business.VolunteerService;

@Controller
public class IndexController {

	@Autowired
	private VolunteerService service;

	@RequestMapping("/disconnect")
	public String disconnectVolunteer(final SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";

	}

}
