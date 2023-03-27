// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  MovieListContract.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewMovieListProtocol {
    func didGetMovieList(_ movie: Movies)
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterMovieListProtocol {
    
    var view: PresenterToViewMovieListProtocol? { get set }
    var interactor: PresenterToInteractorMovieListProtocol? { get set }
    var router: PresenterToRouterMovieListProtocol? { get set }

//Push to next Viewcontroller
//  func pushToNext()
    func fetch(page: Int)
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorMovieListProtocol {
    
    var presenter: InteractorToPresenterMovieListProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterMovieListProtocol {
    
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterMovieListProtocol {
//Push to next Viewcontroller
//  func pushNextModule(on view: PresenterToViewMovieListProtocol)
}
