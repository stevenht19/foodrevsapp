//
//  RestaurantCollectionViewCell.swift
//  stv_app
//
//  Created by steven hernandez on 14/10/23.
//

import UIKit

class RestaurantCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var restaurantBackground: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadData(restaurant: RestaurantBE) {
        lblName.text = restaurant.name
        restaurantBackground.image =  UIImage(named: restaurant.image)
    }
    
}
