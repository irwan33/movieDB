// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  MovieDetailInteractor.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//  
//

import Foundation
import RxSwift
import RxCocoa

class MovieDetailInteractor {

    weak var presenter: MovieDetailInteractorToPresenterProtocol!
    private let service: ApiClient
    let disposeBag = DisposeBag()
    init(service: ApiClient = ApiClient()) {
        self.service = service
    }
}

// MARK: - Conforming to MovieDetailPresenterToInteractorProtocol
extension MovieDetailInteractor: MovieDetailPresenterToInteractorProtocol {
    func getMovieDetail(with movieId: Int) {
        Requests.MovieDetail(movieId)
                .subscribe(onNext:{ [weak self] res in
                    guard let self = self else { return }
                    self.presenter.didGetMovieDetail(res)
                }, onError: { error in
                    print(error)
                }).disposed(by: disposeBag)
    }
}
