//
//  BookListPresenterImp.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import Foundation

class BookListPresenterImp: BookListPresenter {
    
    // MARK: - Variables
    
    weak var view: BookListView?
    private var bookService: BookService
    
    // MARK: - Protocol methods
    
    required init(with bookService: BookService) {
        self.bookService = bookService
    }
    
    func viewDidFinishLoading() {
        let books = bookService.fetchBooks()
        view?.configure(with: books)
    }

}
