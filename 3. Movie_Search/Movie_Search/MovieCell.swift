//
//  MovieCell.swift
//  Movie_Search
//
//  Created by mgpark on 2021/08/03.
//

import UIKit

class MovieCell: UITableViewCell{
    
    @IBOutlet weak var titleLabel: UILabel!{
        didSet{
            titleLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        }
    }
    
    @IBOutlet weak var dateLabel: UILabel!{
        didSet{
            dateLabel.font = .systemFont(ofSize: 13, weight: .light)
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel!{
        didSet{
            descriptionLabel.font = .systemFont(ofSize: 16, weight: .light)
        }
    }
    
    @IBOutlet weak var priceLabel: UILabel!{
        didSet{
            priceLabel.font = .systemFont(ofSize: 12, weight: .bold)
        }
    }
    
    @IBOutlet weak var movieImageView: UIImageView!
}
