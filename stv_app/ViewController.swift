//
//  ViewController.swift
//  stv_app
//
//  Created by steven hernandez on 19/09/23.
//

import UIKit

class ViewController: UIViewController {

    var restaurants : [RestaurantBE] = []
    var categories : [RestaurantBE] = []
    

    @IBOutlet weak var clvRestaurants: UICollectionView!
    @IBOutlet weak var tvRestaurants: UITableView!
    @IBOutlet weak var tbvHeight: NSLayoutConstraint!
    @IBOutlet weak var clvCategories: UICollectionView!
    @IBOutlet weak var clvResHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let restaurant = RestaurantBE(name: "7 Sopas", image: "chinese")
        let restaurant2 = RestaurantBE(name: "8 Sopas", image: "chinese")
        let restaurant3 = RestaurantBE(name: "9 Sopas", image: "chinese")
        let restaurant4 = RestaurantBE(name: "10 Sopas", image: "chinese")
        
        
        let category = RestaurantBE(name: "Mexican", image: "taco")
        let category2 = RestaurantBE(name: "Asian", image: "makis")
        let category3 = RestaurantBE(name: "Peruvian", image: "lomo")
        let category4 = RestaurantBE(name: "Fast Food", image: "hambur")
        let category5 = RestaurantBE(name: "Mexican", image: "taco")
        let category6 = RestaurantBE(name: "Chinese", image: "chinese")
        let category7 = RestaurantBE(name: "Peruvian", image: "lomo")
        let category8 = RestaurantBE(name: "Fast", image: "hambur")
        
        
        restaurants.append(restaurant)
        restaurants.append(restaurant2)
        restaurants.append(restaurant3)
        restaurants.append(restaurant4)
        
        
        categories.append(category)
        categories.append(category2)
        categories.append(category3)
        categories.append(category4)
        categories.append(category5)
        categories.append(category6)
        categories.append(category7)
        categories.append(category8)
        
        
        clvRestaurants
            .register(UINib(nibName: "RestaurantCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RestaurantCollectionViewCell")
        
        self.view.layoutIfNeeded()
        
    }
    
    override func viewDidLayoutSubviews() {
        self.changeCollectionHeight()
    }
    
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {

    func changeCollectionHeight() {
        self.clvResHeight.constant = self.clvRestaurants.contentSize.height
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if (collectionView == clvRestaurants) {
            return self.restaurants.count
        }
        
        if (collectionView == clvCategories) {
            return self.categories.count
        }
        
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == clvRestaurants) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantCollectionViewCell", for: indexPath) as! RestaurantCollectionViewCell
            
            cell.loadData(restaurant: restaurants[indexPath.row])
            return cell
        }
        
        
        else if (collectionView == clvCategories) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
            cell.loadData(restaurant: categories[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (clvRestaurants.frame.width - 4), height: 170)
    }
    
}
