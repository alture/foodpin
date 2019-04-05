//
//  Restaurant.swift
//  FoodPin
//
//  Created by Redemax on 2/12/19.
//  Copyright © 2019 Alisher Altore. All rights reserved.
//

import Foundation

class Restaurant {
    var name: String
    var type: String
    var location: String
    var phone: String
    var description: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, description: String, image: String, isVisited: Bool, rating: String = "") {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.description = description
        self.image = image
        self.isVisited = isVisited
        self.rating = rating
    }
    
    convenience init() {
        self.init(name: "", type: "", location: "", phone: "", description: "", image: "", isVisited: false)
    }
}