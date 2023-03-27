// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  MovieListPresenter.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//  
//

import Foundation
import RxSwift
import RxCocoa

class MovieListPresenter: ViewToPresenterMovieListProtocol {
    var view: PresenterToViewMovieListProtocol?
    
    
    // MARK: Properties
    var interactor: PresenterToInteractorMovieListProtocol?
    var router: PresenterToRouterMovieListProtocol?
    let disposeBag = DisposeBag()
    var movies: Movies?
    
    func fetch(page: Int) {
            Requests.MovieList(page: page)
                    .observe(on: MainScheduler.instance)
                    .subscribe(onNext:{ [weak self] res in
                        guard let self = self else { return }
                        self.view?.didGetMovieList(res)
                    }, onError: { error in
                        print(error)
                    }).disposed(by: disposeBag)
    }
}

extension MovieListPresenter: InteractorToPresenterMovieListProtocol {
//Push to next Viewcontroller
//    func pushToNext(){
//        router?.pushToNextModule(on: view!)
//    }
}
