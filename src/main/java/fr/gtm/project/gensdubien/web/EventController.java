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

import fr.gtm.project.gensdubien.business.EventService;
import fr.gtm.project.gensdubien.entity.Event;

@Controller
@RequestMapping("/evenement")
public class EventController {

	@Autowired
	private EventService service;

	@RequestMapping("/list")
	public ModelAndView viewEvents() {
		ModelAndView mav = new ModelAndView("event");
		List<Event> events = new ArrayList<>();
		events = this.service.getAll();
		mav.addObject("listEvent", events);
		return mav;
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam Integer id) {

		this.service.delete(id);
		return "redirect:/evenement/list.html";
	}

	@PostMapping({"/create", "/update" })
	public String validateForm(
			@DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam LocalDate eventDate,
			@RequestParam String type,
			@RequestParam String eventNumber,
			@RequestParam(required=false) Integer id ) {
		Event event = new Event();
      if (id==null) {
	     service.create(event);
      }else {
    	  
    	  event.setId(id);
    	  service.update(event);
      }
		event.setEventDate(eventDate);
		event.setEventNumber(eventNumber);
		event.setType(type);
		service.create(event);
		return "redirect:/evenement/list.html";
	}

	@RequestMapping("/edit")
	public String edit(@RequestParam Integer id, RedirectAttributes ra) {
		Event event = service.read(id);
		ra.addFlashAttribute("event", event);
		return "redirect:/evenement/list.html";

	}

}