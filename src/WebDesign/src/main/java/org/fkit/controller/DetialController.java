package org.fkit.controller;

import org.fkit.domain.Information;
import org.fkit.domain.Type;
import org.fkit.service.DetialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetialController {
	@Autowired
	@Qualifier("detialService")
	private DetialService detialService;
	@RequestMapping(value="/detial")
	public  String  content(Integer fid,Model model){
		 Information information= detialService.information(fid);
		     model.addAttribute("information", information);
		  Type type=detialService.type(fid);
		     model.addAttribute("type", type);
		return "detail";
	}
}
