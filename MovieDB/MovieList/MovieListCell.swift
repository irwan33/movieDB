//
//  MovieListCell.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//

import UIKit

class MovieListCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var rateVote: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with data: Result?) {
        nameLabel.text = data?.title
        releaseDate.text = data?.release_date?.roundTripDate(style: .long)
        rateVote.text = data?.vote_average?.toString()
        movieImageView.imageFromURL(data?.poster_path ?? "")
    }
}
