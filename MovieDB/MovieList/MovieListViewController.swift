// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  MovieListViewController.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//  
//

import UIKit
import RxSwift
import RxCocoa

class MovieListViewController: UIViewController {
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    // MARK: - Properties
    var presenter: ViewToPresenterMovieListProtocol?
    
    var moviesArray = [Result]()
    var currentPage: Int!
    
    let disposableBag = DisposeBag()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
        presenter?.fetch(page: 1)
    }
    
    func tableViewSetup() {
        navigationItem.title = "Movies"
        
        view.addSubview(tableView)
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.separatorStyle = .none
        
        tableView.register(UINib(nibName: "MovieListCell", bundle: nil), forCellReuseIdentifier: "movieListCell")
    }
    
}

extension MovieListViewController: PresenterToViewMovieListProtocol {
    func didGetMovieList(_ movie: Movies) {
        self.moviesArray.append(contentsOf: movie.results)
        self.currentPage = movie.page
        DispatchQueue.main.async { [weak self] in
            self?.tableView.reloadData()
        }
    }
}

extension MovieListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieListCell", for: indexPath)
        (cell as? MovieListCell)?.configure(with: moviesArray[indexPath.row])
        return cell
    }
}

extension MovieListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 191.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let id = moviesArray[indexPath.row].id else { return }
        let viewController = MovieDetailRouter.createModule(with: id)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            let lastIndex = self.moviesArray.count - 1
            if indexPath.row == lastIndex {
                presenter?.fetch(page: self.currentPage + 1)
            }
        }
}
