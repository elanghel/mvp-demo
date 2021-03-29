//
//  BookListBuilder.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import Foundation

protocol BookListBuilder {
    
    /**
     * A method used to connect the MVP components together for the book list.
     *
     * - parameter bookService - a reference to an object adopting the BookService protocol, used to fetch the book list.
     *
     * - returns a configured instance of BookListViewController.
     */
    func buildModule(with bookService: BookService) -> BookListViewController
}
