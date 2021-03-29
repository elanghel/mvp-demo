//
//  BookListBuilderImp.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import Foundation

class BookListBuilderImp: BookListBuilder {
    
    func buildModule(with bookService: BookService) -> BookListViewController {
        let view = BookListViewController(nibName: "BookListViewController", bundle: nil)
        let presenter = BookListPresenterImp(with: bookService)
        
        presenter.view = view
        view.presenter = presenter
        
        return view
    }
    
}
