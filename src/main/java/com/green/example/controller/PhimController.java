package com.green.example.controller;

import java.util.List;

import javax.validation.Valid;

//import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.green.example.entities.Phim;
import com.green.example.service.PhimService;



@Controller
@RequestMapping("/phim")
public class PhimController {
	@Autowired
	private PhimService phimService;

	@RequestMapping(value = { "", "/list" }, method = RequestMethod.GET)
	public ModelAndView listUsers() {
		ModelAndView model = new ModelAndView();
		model.setViewName("phim/list");

		List<Phim> phim = phimService.findAllUsers();
		model.addObject("phim", phim);

		return model;
	}

	@RequestMapping(value = "/newphim", method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		Phim phim = new Phim();
		model.addAttribute("phim", phim);
		model.addAttribute("edit", false);

		return "phim/newphim";
	}

	@RequestMapping(value = "/newphim", method = RequestMethod.POST)
	public String saveUser(@Valid Phim phim) {
		ModelAndView model = new ModelAndView();
		phimService.savePhim(phim);
		return "phim/suss";
	}
//	@RequestMapping(value = "/file", method = RequestMethod.POST)
//	public String upload(ModelMap mm, HttpServletRequest request, HttpServletResponse response,
//	            @RequestParam(value = "fileUpload", required = false) MultipartFile fileUpload) {
//	    String path = request.getSession().getServletContext().getRealPath("/") + "resources/uploads/";
//	    if (fileUpload != null) {
//	        try {
//	             FileUtils.forceMkdir(new File(path));
//	             File upload = new File(path + fileUpload.getOriginalFilename());
//	             fileUpload.transferTo(upload);
//	             mm.put("fileUpload", fileUpload.getOriginalFilename());
//	        } catch (IOException ex) {
//	             ex.printStackTrace();
//	        }
//	    }
//	    return "phim/showfile";
//	}
}
