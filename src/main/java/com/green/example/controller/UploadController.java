package com.green.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.StringJoiner;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/file")
public class UploadController {

  private static String UPLOADED_FOLDER = "F://temp//";
  @GetMapping("")
  public String index() {
      return "file/upload";
  }

  //@RequestMapping(value = "/upload", method = RequestMethod.POST)
  @PostMapping("/upload") //new annotation since 4.3
  public String singleFileUpload(@RequestParam("file") MultipartFile file,
                                 RedirectAttributes redirectAttributes,HttpServletRequest request, ModelMap model) {
	  
	  UPLOADED_FOLDER = request.getServletContext().getRealPath("upload");
	  String test = request.getContextPath();
	  System.out.println(test);
      File uploadRootDir = new File(UPLOADED_FOLDER);
      if (!uploadRootDir.exists()) {
          uploadRootDir.mkdirs();
      }
      System.out.println("uploadRootPath=" + UPLOADED_FOLDER);
	  if (file.isEmpty()) {
          redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
          return "redirect:uploadStatus";
      }

      try {

          byte[] bytes = file.getBytes();
          UPLOADED_FOLDER=UPLOADED_FOLDER+"/";
          Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
          Files.write(path, bytes);

          redirectAttributes.addFlashAttribute("message", "You successfully uploaded '" + file.getOriginalFilename() + "'");
          model.addAttribute("message2", "You successfully uploaded '" + file.getOriginalFilename() + "'");
      } catch (IOException e) {
          e.printStackTrace();
      }

      return "redirect:uploadStatus";
  }



  @GetMapping("/uploadStatus")
  public String uploadStatus() {
      return "file/uploadStatus";
  }

  @GetMapping("/uploadMultiPage")
  public String uploadMultiPage() {
      return "file/uploadMulti";
  }

}