package com.green.example.config;

import java.io.File;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	private static final String DISPATCH_OPTIONS_REQUEST = "dispatchOptionsRequest";
	
    private int maxUploadSizeInMb = 5 * 1024 * 1024 * 10; // 5 MB
    
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class<?>[] { SpringWebConfig.class, DatasourceConfig.class, SecurityConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] {};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	@Override
	protected void customizeRegistration(ServletRegistration.Dynamic registration) {
		registration.setInitParameter(DISPATCH_OPTIONS_REQUEST, Boolean.TRUE.toString());
        // temp file will be uploaded here
        File uploadDirectory = new File(System.getProperty("java.io.tmpdir"));

        // register a MultipartConfigElement
        MultipartConfigElement multipartConfigElement =
                new MultipartConfigElement(uploadDirectory.getAbsolutePath(),
                        maxUploadSizeInMb, maxUploadSizeInMb * 2, maxUploadSizeInMb / 2);

        registration.setMultipartConfig(multipartConfigElement);
	}

    

}
