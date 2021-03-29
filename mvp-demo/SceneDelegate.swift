//
//  SceneDelegate.swift
//  mvp-demo
//
//  Created by Mihai Petrenco on 3/29/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        
        let bookService = BookServiceImp()
        let builder = BookListBuilderImp()
        
        self.window = window
        window.rootViewController = builder.buildModule(with: bookService)
        window.makeKeyAndVisible()
    }
}

