//
//  BookListTableViewCell.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import UIKit

class BookListTableViewCell: UITableViewCell, BookListCell {
    
    // MARK: - Outlets
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var authorLabel: UILabel!
    @IBOutlet private weak var ratingLabel: UILabel!
    
    // MARK: - Variables
    
    static let reuseIdentifier = "BookListTableViewCell";
    
    // MARK: - Cell configuration
    
    func configure(with book: Book) {
        titleLabel.text = book.title
        authorLabel.text = book.author
        ratingLabel.text = "\(book.rating)"
    }
    
}
