package fr.gtm.project.gensdubien.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import fr.gtm.project.gensdubien.business.EventService;
import fr.gtm.project.gensdubien.entity.Event;

@Controller
public class IndexController {

	@Autowired
	private EventService eventService;

	@RequestMapping("/disconnect")
	public String disconnectClient(final SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}

	@RequestMapping("/index")
	public ModelAndView index() {
		final List<Event> list = this.eventService.getAll();
		final ModelAndView mav = new ModelAndView("index");
		mav.addObject("listEvent", list);
		for (final Event e : list) {
			System.out.println(e.getId());
		}
		System.out.println("test");
		return mav;
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

}
