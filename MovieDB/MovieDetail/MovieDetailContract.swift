// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  MovieDetailContract.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//  
//

import Foundation

protocol MovieDetailViewToPresenterProtocol {
    func fetch()
}

protocol MovieDetailPresenterToViewProtocol {
    func updateView(with movie: MovieDetailViewModel)
}

protocol MovieDetailPresenterToInteractorProtocol {
    func getMovieDetail(with movieId: Int)
}

protocol MovieDetailInteractorToPresenterProtocol: AnyObject {
    func didGetMovieDetail(_ movie: Movie)
}
