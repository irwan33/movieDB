// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  MovieDetailPresenter.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//  
//

import Foundation


class MovieDetailPresenter {

    private let view: MovieDetailPresenterToViewProtocol
    private let interactor: MovieDetailPresenterToInteractorProtocol

    var movieId: Int?

    init(view: MovieDetailPresenterToViewProtocol,
         interactor: MovieDetailPresenterToInteractorProtocol) {
        self.view = view
        self.interactor = interactor
    }

}

extension MovieDetailPresenter: MovieDetailViewToPresenterProtocol {
    func fetch() {
        guard let movieId = movieId else { return }
        interactor.getMovieDetail(with: movieId)
    }
}

extension MovieDetailPresenter: MovieDetailInteractorToPresenterProtocol {

    func didGetMovieDetail(_ movie: Movie) {
        view.updateView(with: MovieDetailViewModel(movie: movie))
    }
}
