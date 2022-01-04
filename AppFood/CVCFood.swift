//
//  CVCFood.swift
//  AppFood
//
//  Created by ihlas on 4.01.2022.
//

import UIKit

class CVCFood: UICollectionViewCell {// coccatach
    
    @IBOutlet var FoodImage: UIImageView!
    @IBOutlet var FoodName: UILabel!
    
    
    func setFood(food:Food){
        FoodImage.image = UIImage(named: food.image!)
        FoodName.text = food.name!
    }
    
}
