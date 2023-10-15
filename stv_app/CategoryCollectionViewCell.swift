//
//  CategoryCollectionViewCell.swift
//  stv_app
//
//  Created by steven hernandez on 14/10/23.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCatName: UILabel!
    @IBOutlet weak var viewCategory: UIView!
    @IBOutlet weak var viewCategory2: UIView!
    
    override func awakeFromNib() {
           super.awakeFromNib()
           
       }
    
    func loadData(restaurant: RestaurantBE) {
                  
        
        lblCatName.text = restaurant.name
        imgCategory.image = UIImage(named: restaurant.image)
    }
    
}
