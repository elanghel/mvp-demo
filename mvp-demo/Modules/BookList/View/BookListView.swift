//
//  BookListView.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import Foundation

protocol BookListView: class {
    
    /**
     * A method called by the presenter once the book list was obtained by the BookService.
     * This reloads the UITableView and configures the custom cells with the obtained books.
     *
     * - parameter books - an array of fetched books, used to configure the cells.
     */
    func configure(with books: [Book])
}
