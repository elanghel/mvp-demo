//
//  BookService.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import Foundation

protocol BookService {
    
    /**
     * A method used to fetch a list of Book instances, containing the title, author and book rating.
     *
     * - returns an array of Book objects.
     */
    func fetchBooks() -> [Book]
}
