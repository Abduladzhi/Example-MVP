//
//  AssemblyModuleBuilder.swift
//  Example-MVP
//
//  Created by Abduladzhi on 14.05.2022.
//

import Foundation
import UIKit

protocol AssemblyModuleBuilderProtocol {
    static func createHomeModule() -> UIViewController
    static func createDetailModule(post: Post?) -> UIViewController
}

final class AssemblyModuleBuilder: AssemblyModuleBuilderProtocol {
    static func createHomeModule() -> UIViewController {
        let view = HomeViewController()
        let networkService = NetworkService()
        let presenter = HomePresenter(view: view, networkService: networkService)
        view.presenter = presenter
        
        return view
    }
    
    static func createDetailModule(post: Post?) -> UIViewController {
        let view = DetailViewController()
        let presenter = DetailPresenter(view: view, post: post)
        view.presenter = presenter
        
        return view
    }
}

