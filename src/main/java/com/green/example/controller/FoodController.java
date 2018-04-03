package com.green.example.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.example.entities.Food;
import com.green.example.service.FoodService;

@Controller
@RequestMapping("/food")
public class FoodController {
	private static String UPLOADED_FOLDER = "C:\\image\\";
	@Autowired
	private FoodService foodService;

	@RequestMapping(value = { "", "/list" }, method = RequestMethod.GET)
	public ModelAndView listUsers() {
		ModelAndView model = new ModelAndView();
		model.setViewName("food/list");
		List<Food> food = foodService.findAllUsers();
		model.addObject("food", food);

		return model;
	}

	@RequestMapping(value = { "/Listfood" }, method = RequestMethod.GET)
	public ModelAndView listFood() {
		ModelAndView model = new ModelAndView();
		model.setViewName("food/Listfood");
		List<Food> food = foodService.findAllUsers();
		model.addObject("listfood", food);
		model.addObject("size", food.size());
		return model;
	}

	@RequestMapping(value = "/newfood", method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		Food food = new Food();
		model.addAttribute("food", food);
		model.addAttribute("edit", false);
		return "food/newfood";
	}

	@RequestMapping(value = "/edit-food-{id}", method = RequestMethod.GET)
	public String editUser(@PathVariable Long id, ModelMap model) {
		Food food = foodService.findById(id);
		model.addAttribute("food", food);
		model.addAttribute("edit", true);
		return "food/newfood";
	}

	@RequestMapping(value = "/edit-food-{id}", method = RequestMethod.POST)
	public String updateUser(@PathVariable long id, @RequestParam("filein") String file,
			@RequestParam("file") MultipartFile fileold, @RequestParam("name") String name,
			@RequestParam("namestore") String namestore, @RequestParam("gia") String gia,
			@RequestParam("storeaddress") String storeaddress, HttpServletRequest request) {
		Food foodUpdate = null;
		if (fileold.getOriginalFilename() != "") {
			foodUpdate = new Food(id, name, fileold.getOriginalFilename(), gia, namestore, storeaddress);
			File uploadRootDir = new File(UPLOADED_FOLDER);
			if (!uploadRootDir.exists()) {
				uploadRootDir.mkdirs();
			}

			UPLOADED_FOLDER = UPLOADED_FOLDER + "\\";
			String filePath = fileold.getOriginalFilename();
			if (fileold.isEmpty()) {

				return "redirect:list";
			}

			try {

				byte[] bytes = fileold.getBytes();
				Path path = Paths.get(UPLOADED_FOLDER + filePath);
				Files.write(path, bytes);

			} catch (IOException e) {
				e.printStackTrace();
			}

		} 
		else {
			foodUpdate = new Food(id, name, file, gia, namestore, storeaddress);
		}

		foodService.updateFood(id, foodUpdate);
		return "redirect:/food";
	}

	@RequestMapping(value = "/delete-food-{id}", method = RequestMethod.GET)
	public String deleteUser(@PathVariable long id) {
		foodService.deleteUser(id);
		return "redirect:/food/list";
	}

	public void uploadImage() {

	}

	@PostMapping("/newfood") // new annotation since 4.3
	public String singleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("name") String name,
			@RequestParam("namestore") String namestore, @RequestParam("gia") String gia,
			@RequestParam("storeaddress") String storeaddress, RedirectAttributes redirectAttributes,
			HttpServletRequest request, ModelMap model, @Valid Food food) {
		// foodService.savePhim(food);

		String test = request.getContextPath();
		File uploadRootDir = new File(UPLOADED_FOLDER);
		if (!uploadRootDir.exists()) {
			uploadRootDir.mkdirs();
		}

		UPLOADED_FOLDER = UPLOADED_FOLDER + "\\";
		String filePath = file.getOriginalFilename();
		Food food2 = new Food();
		food2.setNamestore(namestore);
		food2.setStore(storeaddress);
		food2.setImage(filePath);
		food2.setName(name);
		food2.setPrice(gia);
		foodService.savePhim(food2);

		System.out.println("uploadRootPath=" + UPLOADED_FOLDER);
		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
			return "redirect:list";
		}

		try {

			byte[] bytes = file.getBytes();

			Path path = Paths.get(UPLOADED_FOLDER + filePath);
			Files.write(path, bytes);

			redirectAttributes.addFlashAttribute("message",
					"You successfully uploaded '" + file.getOriginalFilename() + "'");
			model.addAttribute("message2", "You successfully uploaded '" + file.getOriginalFilename() + "'");
			model.addAttribute("test", test);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "redirect:list";
	}

	@RequestMapping(value = "/files/{file_name}", method = RequestMethod.GET)
	public void getFile(@PathVariable("file_name") String fileName, HttpServletResponse response) {
		try {
			// get your file as InputStream
			InputStream is = new FileInputStream(UPLOADED_FOLDER + fileName);
			// copy it to response's OutputStream
			org.apache.commons.io.IOUtils.copy(is, response.getOutputStream());
			response.flushBuffer();
		} catch (IOException ex) {
			throw new RuntimeException("IOError writing file to output stream");
		}

		// return default image

	}

}
