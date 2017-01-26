//
//  PlayerCell.swift
//  Ratings
//
//  Created by Masher Shin on 25/01/2017.
//  Copyright © 2017 Masher Shin. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var gameLabel: UILabel!
    @IBOutlet var ratingImageView: UIImageView!
    var player: Player? {
        didSet {
            nameLabel.text = player?.name
            gameLabel.text = player?.game
            if var rating = player?.rating {
                rating = rating < 1 ? 1 : rating
                rating = rating > 5 ? 5 : rating
                ratingImageView.image = UIImage(named: "\(rating)Stars")
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
