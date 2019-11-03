//
//  MenuViewCell.swift
//  Staples Sandwich
//
//  Created by Owen Dolan on 9/7/19.
//  Copyright © 2019 OD Apps. All rights reserved.
//

import UIKit

class MenuViewCell: UITableViewCell {

    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var foodName: UILabel!
    
    func setFood(food: Food) {
        foodImage.image = food.foodImage
        foodName.text = food.foodName
    }

}
