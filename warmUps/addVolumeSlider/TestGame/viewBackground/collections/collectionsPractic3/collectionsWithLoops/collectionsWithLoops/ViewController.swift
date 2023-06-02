//
//  ViewController.swift
//  collectionsWithLoops
//
//  Created by Sumaiya Mohamed on 10/26/22.
//

import UIKit

class ViewController: UIViewController {

    var stuff = ["games","movies","toys"]
    var morestuff: [String] = []
    
    var bankDepoits = [10000.0,20180.55,142.17]
    var futureBankDepoits: [Double] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        callLocation(whatIndex: 0)
//        simpleLoop()
//        LoopArray()
        addToArray()
    }
    func callLocation(whatIndex: Int){
        let loc = stuff[whatIndex]
        print(loc)
       
    }

   func simpleLoop(){
        for x in 5...20{
            print(x)
        }
    }
    func LoopArray(){
        for name in stuff {
          print(name)
        }
    }
    func addToArray(){
        for cash in 1...10{
            futureBankDepoits.append(100000.00)
        }
        print(futureBankDepoits)
    }
    
    
    
    
}

