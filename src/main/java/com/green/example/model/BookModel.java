package com.green.example.model;

import com.green.example.entities.Book;

public class BookModel {
	private Book book;
	
	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public BookModel(Book book) {
		this.book = book;
	}
	
	
	public BookModel() {
		this.book=new Book();
	}
	
}
