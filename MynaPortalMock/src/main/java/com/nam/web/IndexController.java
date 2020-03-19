package com.nam.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/web/Index.do")
	public String excute(
			HttpServletRequest req,
			Model model
			) {

		model.addAttribute("reply_address", req.getHeader("host"));

		return req.getParameter("afteraction");
	}

}
