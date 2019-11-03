//
//  MainView.swift
//  Staples Sandwich
//
//  Created by Owen Dolan on 9/2/19.
//  Copyright © 2019 OD Apps. All rights reserved.
//

import UIKit
import GoogleSignIn
import FirebaseDatabase

class MainView: UIViewController {
    
    
    let appDelegate = UIApplication.shared.delegate as!AppDelegate //shares values from appdelegate
    
    @IBOutlet var NameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    let orderOptions = ["Wave", "Ingredients", "Size", "Order"]
    
    var currentWaveName = "waveOne"
    var usersName = ""
    
    var food: [Food] = []
    var foodsSelected = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let currentStudent = appDelegate.getCloudData()
        usersName = currentStudent.fullName!
        NameLabel.text = currentStudent.fullName
        
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.allowsSelection = true
        
        food = createArray()
    
    }
        

    @IBAction func SignOut(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
        performSegue(withIdentifier: "signOut", sender: nil)
    }
    

    func createArray() -> [Food] {
        var tempFoods: [Food] = []
        
        let onionChoice = Food(foodImage:#imageLiteral(resourceName: "onion"), foodName: "Onion")
        let tomatoChoice = Food(foodImage:#imageLiteral(resourceName: "tomato") , foodName: "Tomato")
        let pepperChoice = Food(foodImage:#imageLiteral(resourceName: "pepper") , foodName: "Pepper")
        let jalapanoChoice = Food(foodImage:#imageLiteral(resourceName: "jalapeno") , foodName: "Jalapeno")
        let oliveChoice = Food(foodImage:#imageLiteral(resourceName: "olives") , foodName: "Olive")
        let lettuceChoice = Food(foodImage:#imageLiteral(resourceName: "lettuce") , foodName: "Lettuce")
        
        tempFoods.append(onionChoice)
        tempFoods.append(tomatoChoice)
        tempFoods.append(pepperChoice)
        tempFoods.append(jalapanoChoice)
        tempFoods.append(oliveChoice)
        tempFoods.append(lettuceChoice)
        
        return tempFoods
    }
    

    // if order sandwich button is pressed
//    @IBAction func pushSandwich(_ sender: Any) {
//        let ref = FIRDatabase.database().reference()
//        let hour = Calendar.current.component(.hour, from: Date())//gets hour so order placed within morning
//
//        ref.child("Orders").child(currentWaveName).observeSingleEvent(of: .value, with: { (snapshot) in //reads in data from the specified lunch wave
//            if((snapshot.childrenCount >= 25)) {//if already max orders than error
//                let alert = UIAlertController(title: "Unable To Order", message: "The maximum orders for lunch has been reached", preferredStyle: UIAlertController.Style.alert)
//                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                self.present(alert, animated: true, completion: nil) //returns error when max has been riched
//            }
//            if((snapshot.childrenCount <= 25) && (hour>1) && (hour<10)) { //if the maximum orders for the wave has not been reached
//                let alert = UIAlertController(title: "Confirm Order", message: "Would you like to place the order", preferredStyle: UIAlertController.Style.alert)
//                alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
//                alert.addAction(UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction!) in
//                    ref.child("Orders").child(self.currentWaveName).child(self.usersName).setValue(self.foodsSelected)
//                }))
//                self.present(alert, animated: true, completion: nil) //returns error when max has been riched
//            }
//            if(hour>10) {
//                let alert = UIAlertController(title: "Unable To Order", message: "orders only accepted at 10:00 am or earlier", preferredStyle: UIAlertController.Style.alert)
//                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                self.present(alert, animated: true, completion: nil) //returns error when trying to order at night or after lunch started
//            }
//        })
//
//    }
    
//    //Selector for lunch wave
//    @IBAction func lunchWaveSelected(_ sender: Any) {
//        let index = waveSelect.selectedSegmentIndex
//        switch(index) {
//        case 0: currentWaveName = "waveOne"
//        case 1: currentWaveName = "waveTwo"
//        case 2: currentWaveName = "waveThree"
//        default : break
//        }
//    }
//
    
}

extension MainView: UIPickerViewDataSource, UIPickerViewDelegate  {
    func numberOfComponents(in pickerView: UIPickerView) ->Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return orderOptions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return orderOptions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
}

//table view controller for sandwich options
//extension MainView: UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let currentFood = food[indexPath.row]
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MenuViewCell
//
//        cell.setFood(food: currentFood)
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return food.count
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let currentFood = food[indexPath.row]
//        if(tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCell.AccessoryType.checkmark) {
//            foodsSelected = foodsSelected.filter {$0 != currentFood.foodName}
//            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
//        } else {
//            foodsSelected.append(currentFood.foodName)
//            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
//        }
//        print(foodsSelected)
//    }
//}


