//
//  ViewController.swift
//  AppFood
//
//  Created by ihlas on 4.01.2022.
//

import UIKit

class ViewController: UIViewController {
var lisftOfFoods = [Food]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func loadFoodsFromPropertyList(){
        let path = Bundle.main.path(forResource: "Foods", ofType: "plist")! as String
        let url = URL(fileURLWithPath: path)
        
        do{
            let data  = try Data(contentsOf: url)
            let plist = try PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil)
            let dicArray = plist as![[String: String]]
            for food in dicArray{
                lisftOfFoods.append(Food(name: food["Name"]!, des: food["Des"]!, image: food["Food"]!))
            }

        }catch{
            print("can not read file")
            
        }
        
    }
}

