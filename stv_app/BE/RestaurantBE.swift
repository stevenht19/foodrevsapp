//
//  RestaurantBE.swift
//  stv_app
//
//  Created by steven hernandez on 14/10/23.
//

import UIKit

class RestaurantBE: NSObject {
    var name : String
    var image : String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
