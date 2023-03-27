//
//  MovieDetailViewModel.swift
//  MovieDB
//
//  Created by Irwan on 14/03/23.
//

import Foundation
struct MovieDetailViewModel {
    let title: String
    let posterPath: String?
    let overview: String?
    let backdropPath: String?
    let voteAverage: Double?
}

extension MovieDetailViewModel {
    init(movie: Movie) {
        self.title = movie.title!
        self.posterPath = movie.poster_path
        self.overview = movie.overview
        self.backdropPath = movie.backdrop_path
        self.voteAverage = movie.vote_average
    }
}
