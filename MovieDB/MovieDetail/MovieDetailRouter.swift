// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  MovieDetailRouter.swift
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

class MovieDetailRouter {

    static func createModule(with movieId: Int) -> MovieDetailViewController {
        let storyBoard = UIStoryboard(name: "MovieDetail", bundle: nil)
        let view = storyBoard.instantiateViewController(withIdentifier: "MovieDetailViewController") as! MovieDetailViewController
        let interactor = MovieDetailInteractor(service: ApiClient())
        let presenter = MovieDetailPresenter(view: view,
                                              interactor: interactor)
        presenter.movieId = movieId
        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }

    //Push to next Viewcontroller
    //    func pushToNextModule(on view: PresenterToViewMovieDetailProtocol) {
    //        let NextModuleViewController = NextModuleRouter.createModule()
    //
    //        let viewController = view as! MovieDetailViewController
    //        viewController.navigationController?
    //            .pushViewController(NextModuleViewController, animated: true)
    //
    //    }
}
