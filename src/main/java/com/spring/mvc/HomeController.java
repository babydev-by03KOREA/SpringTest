package com.spring.mvc;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}

	@RequestMapping("/vip.do")
	public String vip(Model model) {
		logger.info("VIP USER APPROACH");

		return "Security/vip";
	}

	@RequestMapping("/admin.do")
	public String admin(Model model) {
		logger.info("ADMIN USER APPROACH");

		return "Security/admin";
	}

	@RequestMapping("/login.do")
	public String login(Model model) {
		logger.info("LOGIN APPROACH");

		return "User/login";
	}

	@RequestMapping("/loginError.do")
	public String loginError(Model model) {
		model.addAttribute("Error","YOU'RE LOGIN ACCESS WAS DENIED \n PLEASE CHECK YOUR ID OR PASSWORD");
		return "Security/loginError";
	}
//	loginCheck, logout remove
}
