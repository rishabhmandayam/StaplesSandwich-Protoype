//
//  ViewController.swift
//  Staples Sandwich
//
//  Created by Owen Dolan on 9/1/19.
//  Copyright © 2019 OD Apps. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
         //auto sign in if user signed in before
        let signinbutton = GIDSignInButton(frame: CGRect(x:0, y:0, width:150, height:48))
        signinbutton.center.x = self.view.frame.size.width/2
        signinbutton.center.y = self.view.frame.size.height/2 + self.view.frame.size.height/3.5
        
        view.addSubview(signinbutton)
        GIDSignIn.sharedInstance().signInSilently()
    
    }
}

class Student {
    var fullName:String?
    var firstName:String?
    var lastName:String?
    var email:String?
    
    init(){
    }
}



