package fr.gtm.project.gensdubien.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class IndexController {

	@RequestMapping("/disconnect")
	public String disconnectClient(final SessionStatus status) {
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
