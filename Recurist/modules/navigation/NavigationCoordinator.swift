//
//  NavigationCoordinator.swift
//  Recurist
//
//  Created by Maxim Gladkov on 28.03.2023.
//

import UIKit
import SwiftUI
//TODO: continue medium articule from Different transitions

class NavigationCoordinator: ObservableObject {
    private lazy var navigationController: UINavigationController = .init()
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    func start<Content: View>(content: Content) {
        let viewWithCoordinator = content.environmentObject(self)
        let viewController = UIHostingController(rootView: viewWithCoordinator)
        navigationController.setViewControllers([viewController], animated: false)
    }
    
    func show<Destination: View>(_ view: Destination, animated: Bool = true) {
        let viewWithCoordinator = view.environmentObject(self)
        let viewController = UIHostingController(rootView: viewWithCoordinator)
        navigationController.pushViewController(viewController, animated: animated)
    }
    
    func pop(animated: Bool = true) {
        navigationController.popViewController(animated: animated)
    }
    
    func popToRoot(animated: Bool = true) {
        navigationController.popViewController(animated: animated)
    }
}
