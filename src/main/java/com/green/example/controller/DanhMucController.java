package com.green.example.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.example.entities.DanhMuc;
import com.green.example.service.DanhMucService;

@Controller
@RequestMapping("/danhmuc")
public class DanhMucController {

	@Autowired
	private DanhMucService danhMucService;

	@RequestMapping(value = { "", "/list" }, method = RequestMethod.GET)
	public ModelAndView listUsers() {
		ModelAndView model = new ModelAndView();
		model.setViewName("danhmuc/list");
		List<DanhMuc> dm = danhMucService.findAllDanhMuc();
		model.addObject("danhmuc", dm);

		return model;
	}

	@RequestMapping(value = "/newdanhmuc", method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		DanhMuc dm = new DanhMuc();
		model.addAttribute("danhmuc", dm);
		model.addAttribute("edit", false);

		return "danhmuc/newdanhmuc";
	}

	@RequestMapping(value = "/newdanhmuc", method = RequestMethod.POST)
	public String saveUser(@Valid DanhMuc dm, BindingResult result, ModelMap model,
			@RequestParam("tendanhmuc") String tendanhmuc) {

		if (result.hasErrors()) {
			return "danhmuc/newdanhmuc";
		}
		DanhMuc dm2 = new DanhMuc();
		dm2.setTendanhmuc(tendanhmuc);
		danhMucService.saveDanhMuc(dm2);

		// return "success";
		return "redirect:list";
	}

	@RequestMapping(value = "/edit-dm-{id}", method = RequestMethod.GET)
	public String editDanhMuc(@PathVariable Long id,ModelMap model) {
		
		model.addAttribute("danhmuc", danhMucService.findById(id));
		model.addAttribute("edit", true);
		return "danhmuc/newdanhmuc";

	}
	@RequestMapping(value = "/edit-dm-{id}", method = RequestMethod.POST)
	public String updateDanhMuc(ModelMap model, @RequestParam("tendanhmuc") String tendanhmuc, @PathVariable Long id) {
		DanhMuc dm = new DanhMuc();
		dm.setTendanhmuc(tendanhmuc);
		danhMucService.updateDanhMuc(id, dm);

		return "redirect:/danhmuc";
	}

}
