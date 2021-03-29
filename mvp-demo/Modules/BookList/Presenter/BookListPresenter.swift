//
//  BookListPresenter.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import Foundation

protocol BookListPresenter {
    
    /**
     * A designated initializer used to set up a BookListPresenter implementer using a provided book service.
     *
     * - parameter bookService - an object implementing the BookService protocol, used to fetch the book list.
     */
    init(with bookService: BookService)
    
    /**
     * A method used to notify the presenter that the view finished loading.
     * This will start fetching the book list and configuring the view.
     */
    func viewDidFinishLoading()
}
