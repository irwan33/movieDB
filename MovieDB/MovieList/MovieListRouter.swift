// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  MovieListRouter.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//  
//

import Foundation
import UIKit
// To create UINavigationController
// 1. Change return type of CreateModule class to UiNavigationController
// 2. Add navigationController after viewcontroller
//      let navigationController = UINavigationController(rootViewController: viewController)
// 3. Add the viewcontroller into navigationcontroller
//      let navigationController = UINavigationController(rootViewController: viewController)
// 4. Change return value of createModule() function from viewController to navigationController

class MovieListRouter: PresenterToRouterMovieListProtocol {

    private init() {}
    // MARK: Static methods
    static func createModule() -> UIViewController {

        //For Programmatic UI or Swiftui uncomment next line and comment following two lines
        //let viewController = MovieListViewController()
        let viewController: MovieListViewController = MovieListViewController()
        //You need to add Storyboard named MovieList and define its identifier as MovieListStoryboard to the project

        let presenter: ViewToPresenterMovieListProtocol & InteractorToPresenterMovieListProtocol = MovieListPresenter()

        viewController.presenter = presenter
        viewController.presenter?.router = MovieListRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = MovieListInteractor()
        viewController.presenter?.interactor?.presenter = presenter

        return viewController
    }

    //Push to next Viewcontroller
    //    func pushToNextModule(on view: PresenterToViewMovieListProtocol) {
    //        let NextModuleViewController = NextModuleRouter.createModule()
    //
    //        let viewController = view as! MovieListViewController
    //        viewController.navigationController?
    //            .pushViewController(NextModuleViewController, animated: true)
    //
    //    }
}
