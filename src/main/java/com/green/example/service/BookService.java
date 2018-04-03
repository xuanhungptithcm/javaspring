package com.green.example.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.example.dao.BookDao;
import com.green.example.entities.Book;

@Transactional
@Service
public class BookService {

	@Autowired
	private BookDao dao;

	public List<Book> findAllBook() {
		return dao.getAll();
	}

	public void saveBook(Book book) {
		dao.persist(book);
	}

	public Book findById(Long id) {
		Book book = dao.getByKey(id);
		return book;
	}

	public void updateBook(Long id, Book book) {
		Book entity = dao.getByKey(id);
		entity.setDanhmuc(book.getDanhmuc());
		entity.setDate(book.getDate());
		entity.setImage(book.getImage());
		entity.setNamebook(book.getNamebook());
		entity.setPrice(book.getPrice());
		entity.setPriceold(book.getPriceold());
		dao.update(entity);

	}

	public void deleteBook(Long id) {
		Book entity = dao.getByKey(id);
		if (entity != null) {
			dao.delete(entity);
		}
	}

	public List<Book> findBookCategory(long id) {

		return dao.findBookbyCategory(id);

	}
	public List<Book> searchBook(String name) {

		return dao.searchBook(name);

	}

}
