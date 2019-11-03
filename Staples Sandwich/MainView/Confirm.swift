//
//  Confirm.swift
//  Staples Sandwich
//
//  Created by Owen Dolan on 9/18/19.
//  Copyright © 2019 OD Apps. All rights reserved.
//

import UIKit
import FirebaseDatabase

var ref: FIRDatabaseReference?
var finalOrder = (String(),[String]())

class Confirm: UIView {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate //shares values from appdelegate
    
   //ref = FIRDatabase.database().reference()
        

//    @IBAction func PushToBase(_ sender: Any) {
//        //ref?.child("users").child(usersName).setValue(foodsSelected)
//        //finalOrder = appDelegate.holdOrder
//        //print(finalOrder)
//    }
}
