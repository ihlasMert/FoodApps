//
//  VCFFoodDetails.swift
//  AppFood
//
//  Created by ihlas on 4.01.2022.
//

import UIKit

class VCFFoodDetails: UIViewController {

    @IBOutlet var ivFoodImage: UIImageView!
    
    @IBOutlet var laFoodName: UILabel!
    
    @IBOutlet var FoodDes: UITextView!
    
    var food: Food?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        laFoodName.text = food?.name!
        FoodDes.text = food?.des!
        ivFoodImage.image = UIImage(named: (food?.image!)!)
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
