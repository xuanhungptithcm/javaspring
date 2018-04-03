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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.green.example.entities.Book;
import com.green.example.entities.DanhMuc;
import com.green.example.model.BookModel;
import com.green.example.service.BookService;
import com.green.example.service.DanhMucService;

@Controller
@RequestMapping("/book")
public class BookController {
	private static String UPLOADED_FOLDER = "C:\\image\\";
	@Autowired
	private BookService bookService;
	@Autowired
	private DanhMucService DanhMucService;

	@RequestMapping(value = { "/","" }, method = RequestMethod.GET)
	public ModelAndView bookdetail() {
		ModelAndView model = new ModelAndView();
		model.setViewName("book/trangchubanbao");
		List<DanhMuc> listId = DanhMucService.findAllDanhMuc();
		for(int i=0;i<listId.size();i++) {
			model.addObject("dm"+(i+1), bookService.findBookCategory(listId.get(i).getId()));
		}
//		model.addObject("dm1", bookService.findBookCategory(listId.get(0).getId()));
//		model.addObject("dm1", bookService.findBookCategory(listId.get(0).getId()));

		return model;
	}
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public @ResponseBody String searchPerson(HttpServletRequest request) {

		String query = request.getParameter("name");
		List<Book> list = bookService.searchBook(query);
		ObjectMapper mapper = new ObjectMapper();
		String ajaxResponse = "";
		try {
			ajaxResponse = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		return ajaxResponse;
	}

	
	@RequestMapping(value = { "/bookcart" }, method = RequestMethod.GET)
	public String bookCart() {
//		ModelAndView model = new ModelAndView();
//		model.setViewName("book/trangchubanbao");
//		List<DanhMuc> listId = DanhMucService.findAllDanhMuc();
//		
//		model.addObject("dm1", bookService.findBookCategory(listId.get(0).getId()));

		return "book/bookcart";
	}
	
	@RequestMapping(value = { "/listbook" }, method = RequestMethod.GET)
	public ModelAndView listBooks() {
		ModelAndView model = new ModelAndView();
		model.setViewName("book/list");
		List<Book> book = bookService.findAllBook();
		model.addObject("book", book);

		return model;
	}
//	@RequestMapping(value = { "/test" }, method = RequestMethod.GET)
//	public ModelAndView test() {
//		ModelAndView model = new ModelAndView();
//		model.setViewName("book/demo");
//		List<Book> book = bookService.findBook();
//		model.addObject("book", book);
//
//		return model;
//	}

	@RequestMapping(value = "/newbook", method = RequestMethod.GET)
	public String newBook(ModelMap model) {
		model.addAttribute("bookModel", new BookModel());
		model.addAttribute("danhmuc", DanhMucService.findAllDanhMuc());
		return "book/newbook";
	}

	@PostMapping("/newbook") // new annotation since 4.3
	public String singleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("namebook") String namebook,
			@RequestParam("priceold") String priceold, @RequestParam("price") String price,
			@RequestParam("date") String date, RedirectAttributes redirectAttributes, HttpServletRequest request,
			ModelMap model, @ModelAttribute BookModel book) {
		Book bookIn = new Book();
		DanhMuc danhmuc = new DanhMuc();

		danhmuc.setId(book.getBook().getDanhmuc().getId());
		danhmuc.setTendanhmuc(book.getBook().getDanhmuc().getTendanhmuc());

		bookIn.setDanhmuc(danhmuc);
		bookIn.setDate(date);
		bookIn.setImage(file.getOriginalFilename());
		bookIn.setPrice(price);
		bookIn.setPriceold(priceold);
		bookIn.setNamebook(namebook);
		bookService.saveBook(bookIn);

		File uploadRootDir = new File(UPLOADED_FOLDER);
		if (!uploadRootDir.exists()) {
			uploadRootDir.mkdirs();
		}

		UPLOADED_FOLDER = UPLOADED_FOLDER + "\\";
		String filePath = file.getOriginalFilename();

		System.out.println("uploadRootPath=" + UPLOADED_FOLDER);
		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
			return "redirect:list";
		}

		try {

			byte[] bytes = file.getBytes();

			Path path = Paths.get(UPLOADED_FOLDER + filePath);

			Files.write(path, bytes);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "redirect:/book/listbook";
	}

	@RequestMapping(value = "/edit-book-{id}", method = RequestMethod.GET)
	public String editBook(@PathVariable long id, ModelMap model) {
		Book book = bookService.findById(id);
		BookModel bookmodel = new BookModel();
		bookmodel.setBook(book);
		model.addAttribute("bookModel", bookmodel);
		model.addAttribute("danhmuc", DanhMucService.findAllDanhMuc());
		model.addAttribute("edit", true);

		return "book/newbook";
	}
	

	@PostMapping("/edit-book-{id}") // new annotation since 4.3
	public String updateBook(@PathVariable long id,@RequestParam("filein") MultipartFile file, @RequestParam("namebook") String namebook,
			@RequestParam("fileold") String fileold, @RequestParam("priceold") String priceold,
			@RequestParam("price") String price, @RequestParam("date") String date,
			RedirectAttributes redirectAttributes, HttpServletRequest request, ModelMap model,
			@ModelAttribute BookModel book) {
		Book bookIn = new Book();
		DanhMuc danhmuc = new DanhMuc();
		if (file.getOriginalFilename() != "") {
			
			danhmuc.setId(book.getBook().getDanhmuc().getId());
			danhmuc.setTendanhmuc(book.getBook().getDanhmuc().getTendanhmuc());

			bookIn.setDanhmuc(danhmuc);
			bookIn.setDate(date);
			bookIn.setImage(file.getOriginalFilename());
			bookIn.setPrice(price);
			bookIn.setPriceold(priceold);
			bookIn.setNamebook(namebook);


			File uploadRootDir = new File(UPLOADED_FOLDER);
			if (!uploadRootDir.exists()) {
				uploadRootDir.mkdirs();
			}

			UPLOADED_FOLDER = UPLOADED_FOLDER + "\\";
			String filePath = file.getOriginalFilename();

			System.out.println("uploadRootPath=" + UPLOADED_FOLDER);
			if (file.isEmpty()) {
				redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
				return "redirect:list";
			}

			try {

				byte[] bytes = file.getBytes();

				Path path = Paths.get(UPLOADED_FOLDER + filePath);

				Files.write(path, bytes);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		else {
			danhmuc.setId(book.getBook().getDanhmuc().getId());
			danhmuc.setTendanhmuc(book.getBook().getDanhmuc().getTendanhmuc());

			bookIn.setDanhmuc(danhmuc);
			bookIn.setDate(date);
			bookIn.setImage(fileold);
			bookIn.setPrice(price);
			bookIn.setPriceold(priceold);
			bookIn.setNamebook(namebook);

		}
		
		bookService.updateBook(id, bookIn);
		return "redirect:/book/listbook";
	}


	@RequestMapping(value = "/delete-book-{id}", method = RequestMethod.GET)
	public String deleteUser(@PathVariable long id) {
		bookService.deleteBook(id);
		return "redirect:/book/list";
	}

	public void uploadImage() {

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

	}

}
