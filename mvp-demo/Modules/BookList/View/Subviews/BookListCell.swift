//
//  BookListCell.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import Foundation

protocol BookListCell {
    
    /**
     * A method used to configure an object implementing the BookListCell protocol with information from the Book model.
     *
     * - parameter book - a Book instance, containing the book information.
     */
    func configure(with book: Book)
}
