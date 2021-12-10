package com.codingdojo.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.mvc.models.Book;
import com.codingdojo.mvc.repositories.BookRepository;

@Service
public class BookService {
	
	//adding the book repo as a dependency
	private final BookRepository bookRepository;
	public BookService(BookRepository bookRepository) {
		this.bookRepository = bookRepository;
	}
	
	//returns all books
	public List<Book> allBooks() {
		return bookRepository.findAll();
	}
	
	//creates a book
	public Book createBook(Book b) {
		return bookRepository.save(b);
	}
	
	//retrieves a book
	public Book findBook(Long id) {
		Optional<Book> optionalBook = bookRepository.findById(id);
		if(optionalBook.isPresent()) {
			return optionalBook.get();
		} else {
			return null;
		}
	}
	
	public Book updateBook(Long id, String title, String desc, String lang, Integer pages ) {
		Book oldBook = this.findBook(id);
		oldBook.setTitle(title);
		oldBook.setDescription(desc);
		oldBook.setLanguage(lang);
		oldBook.setNumberOfPages(pages);
		return bookRepository.save(oldBook);
		
	}
	
	public void deleteBook(Long id) {
		bookRepository.deleteById(id);
	}

	
	
	
	
}
