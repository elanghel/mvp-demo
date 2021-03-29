//
//  BookServiceImp.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import Foundation

class BookServiceImp: BookService {
    
    func fetchBooks() -> [Book] {
        return [
            Book(title: "The Count of Monte Cristo",
                 author: "Alexandre Dumas",
                 rating: 5),
            
            Book(title: "The Hobbit",
                 author: "J. R. R. Tolkien",
                 rating: 4),
            
            Book(title: "Dune",
                 author: "Frank Herbert",
                 rating: 4),
            
            Book(title: "Ecce Homo",
                 author: "Friedrich Nietzsche",
                 rating: 3),
            
            Book(title: "The Shining",
                 author: "Stephen King",
                 rating: 4)
        ]
        
    }
    
}
