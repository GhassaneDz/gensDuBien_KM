package fr.gtm.project.gensdubien.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.gtm.project.gensdubien.business.EventService;
import fr.gtm.project.gensdubien.entity.Event;
@Controller
public class EventController {

	@Autowired
	private EventService service;
	
	@RequestMapping("/evenement")
	public ModelAndView viewEvents() {
		ModelAndView mav = new ModelAndView("event");
		List<Event> events = new ArrayList<>();
		events = this.service.getAll();
		mav.addObject("listEvent", events);
		return mav;
	}
}
