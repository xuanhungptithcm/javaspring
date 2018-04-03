package com.green.example.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.green.example.entities.Book;

@Repository
public class BookDao extends AbstractDao<Long, Book>{
	@SuppressWarnings("unchecked")
	public List<Book> findBookbyCategory(long id) {
		String sql = "SELECT b FROM Book b where b.danhmuc.id = :id";
		Query query = getSession().createQuery(sql);
		query.setParameter("id", id);
		List<Book> results = query.list();
        return results;
	}
	@SuppressWarnings("unchecked")
	public List<Book> searchBook(String name) {
		String sql = "SELECT b FROM Book b where b.namebook like :id";
		Query query = getSession().createQuery(sql);
		query.setParameter("id",  "%" + name + "%");
		List<Book> results = query.list();
        return results;
	}
}
