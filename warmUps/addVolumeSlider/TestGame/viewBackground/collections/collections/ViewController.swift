//
//  ViewController.swift
//  collections
//
//  Created by Sumaiya Mohamed on 10/24/22.
//

import UIKit

class ViewController: UIViewController {
    
var myArrayOfFood = ["butter", "bread", "cookies"]
//rarrays are indexed   [0]      [1]        [2]
    var myListOfNumbers = [7,3,6000,1234569,-14,-10000]
    
    @IBOutlet weak var arrayText: UILabel!
    
    @IBOutlet weak var randomPick: UILabel!
    
    @IBOutlet weak var nextItems: UILabel!
    
    @IBOutlet weak var removeTapp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(myArrayOfFood)
        print(myArrayOfFood[2])
        print(myListOfNumbers[2])
        myArrayOfFood.append("appel juice")
//        .append adds to the end of an array
        myArrayOfFood.append("coffee")
        print(myArrayOfFood)
        var howManyItems = myArrayOfFood.count
        print(howManyItems)
        myArrayOfFood.remove(at: 2 )
        print(myArrayOfFood)
//        myArrayOfFood.shuffle()
        print(myArrayOfFood)
        print("i would like to order \(myArrayOfFood[2])")
            }

    
    @IBAction func randomPick(_ sender: UIButton) {
    }
    
    
    @IBAction func nextItems(_ sender: UIButton) {
    }
    
    
    @IBAction func removeTapp(_ sender: UIButton) {
    }
}

