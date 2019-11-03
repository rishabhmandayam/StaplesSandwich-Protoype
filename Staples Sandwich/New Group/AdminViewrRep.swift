//
//  AdminViewrRep.swift
//  Staples Sandwich
//
//  Created by Owen Dolan on 9/8/19.
//  Copyright © 2019 OD Apps. All rights reserved.
//

import UIKit

class AdminViewrRep: UIView {
    
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    func setup() {
        let currentStudent = appDelegate.getCloudData()
        //NameLabel.text = currentStudent.fullName
    }
    

}
