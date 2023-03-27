//
//  MovieLIstViewModel.swift
//  MovieDB
//
//  Created by Ewide Dev. 2 on 15/03/23.
//

import Foundation
struct MovieListViewModel {
    let title: String
    let posterPath: String?
    let releaseDate: String?
    let backdropPath: String?
    let voteAverage: Double?
}

extension MovieListViewModel {
    init(movie: Result) {
        self.title = movie.title!
        self.posterPath = movie.poster_path!
        self.releaseDate = movie.release_date!
        self.backdropPath = movie.backdrop_path!
        self.voteAverage = movie.vote_average!
    }
}

