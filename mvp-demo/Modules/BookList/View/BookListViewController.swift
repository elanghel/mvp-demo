//
//  BookListViewController.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import UIKit

class BookListViewController: UIViewController {
    
    // MARK: - Constants
    
    private let kBookListCellHeight = 60.0
    
    // MARK: - Variables
    
    private var books: [Book] = []
    var presenter: BookListPresenter?
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        setupReusableCell()
        presenter?.viewDidFinishLoading()
    }
    
    // MARK: - Helper methods
    
    private func setupReusableCell() {
        let bookCellNib = UINib(nibName: BookListTableViewCell.reuseIdentifier,
                                bundle: nil)
        
        tableView.register(bookCellNib,
                           forCellReuseIdentifier: BookListTableViewCell.reuseIdentifier)
    }
    
}

// MARK: - Protocol conformancee

extension BookListViewController: BookListView {
    
    func configure(with books: [Book]) {
        self.books = books
        tableView.reloadData()
    }
    
}

// MARK: - UITableViewDataSource

extension BookListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: BookListTableViewCell.reuseIdentifier)
        
        if let bookCell = cell as? BookListCell {
            let book = books[indexPath.row]
            bookCell.configure(with: book)
        }
        
        return cell ?? UITableViewCell()
    }
}

// MARK: - UITableViewDelegate

extension BookListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return kBookListCellHeight
    }
}
