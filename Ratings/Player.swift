//
//  Player.swift
//  Ratings
//
//  Created by Masher Shin on 25/01/2017.
//  Copyright © 2017 Masher Shin. All rights reserved.
//

import Foundation

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}
