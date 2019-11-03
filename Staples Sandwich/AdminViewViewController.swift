//
//  AdminViewViewController.swift
//  Staples Sandwich
//
//  Created by Owen Dolan on 9/6/19.
//  Copyright © 2019 OD Apps. All rights reserved.
//

import UIKit
import GoogleSignIn

class AdminViewViewController: UIViewController {
    
    @IBOutlet var HoldView: UIView!
    
    var StudentViewAdmin: UIView!
    var AdminViewAdmin: UIView!
    
    @IBAction func signOut(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
        performSegue(withIdentifier: "outOfAdmin", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

}

