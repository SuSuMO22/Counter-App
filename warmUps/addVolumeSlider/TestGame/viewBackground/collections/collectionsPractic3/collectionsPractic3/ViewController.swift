//
//  ViewController.swift
//  collectionsPractic3
//
//  Created by Sumaiya Mohamed on 10/25/22.
//

import UIKit

class ViewController: UIViewController {

  var animals = ["cat","dog","pig","panda","bird"]
    
    @IBOutlet weak var textArea: UITextView!
    
    @IBOutlet weak var addText: UITextField!
    
    @IBOutlet weak var slectedSegment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textArea.text = "\(animals)"
    }

    @IBAction func pickIndexSlected(_ sender: UISegmentedControl) {
//        print("\(sender.selectedSegmentIndex)")
        let num = sender.selectedSegmentIndex
        if num < animals.count{
            slectedSegment.text = animals[num]
        } else{
            slectedSegment.text = "Not a vaild index"
        }
        
    }
    
    
    @IBAction func shuffle(_ sender: UIButton) {
        animals.shuffle()
        textArea.text = "\(animals)"
    }
    
    @IBAction func removeAtZero(_ sender: UIButton) {
        if animals.count > 0 {
            animals.remove(at: 0)
            textArea.text = "\(animals)"
        }
        
        
    }
    
    
    @IBAction func addItems(_ sender: UIButton) {
        if let newItem = addText.text{
            animals.append(newItem)
            textArea.text = "\(animals)"
        }
    }
    
    
    
    
}

