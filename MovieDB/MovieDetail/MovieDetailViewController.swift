// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  MovieDetailViewController.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//  
//

import UIKit
import RxSwift
import RxCocoa
import SwiftUI

class MovieDetailViewController: UIViewController {
    // MARK: - Properties
    
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var desctiptionMovie: UILabel!
    @IBOutlet weak var posterMovie: UIImageView!
    @IBOutlet weak var backDropMovie: UIImageView!
    @IBOutlet weak var ratingMovie: UILabel!
    
    var presenter: MovieDetailViewToPresenterProtocol!
        
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter.fetch()
    }
}

extension MovieDetailViewController: MovieDetailPresenterToViewProtocol {
    func updateView(with movie: MovieDetailViewModel) {
        titleMovie.text = movie.title
        ratingMovie.text = movie.voteAverage?.toString()
        backDropMovie.imageFromURL(movie.backdropPath ?? "")
        posterMovie.imageFromURL(movie.posterPath ?? "")
        desctiptionMovie.text = movie.overview
    }
}


