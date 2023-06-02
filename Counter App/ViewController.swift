

import UIKit

class ViewController: UIViewController {
    
    var count:Int = 0
    var counting:Bool = false
    var timer:Timer = Timer()
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var myRestart: UIButton!
    
    
    @IBOutlet weak var startCount: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
myButton.backgroundColor = .white
myButton.layer.cornerRadius = 50
//myButton.layer.borderWidth = 5

myRestart.backgroundColor = .white
myRestart.layer.cornerRadius = 50
// myRestart.layer.borderWidth = 5
    }

    @IBAction func reset(_ sender: UIButton) {
        timer.invalidate()
        count = 0
        countLabel.text = "count: " + String(count)
    }
    @IBAction func startCount(_ sender: UIButton){
        if counting{
            startCount.setTitle("Start", for: .normal)
            timer.invalidate()
            counting = false
        }else if !counting{
            startCount.setTitle("Stop", for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
            counting = true
        }
    }
    @objc func counter()-> Void {
        
        count += 1
        countLabel.text = "count: " + String(count)
    }
    
    func stopTimer(){
        timer.invalidate()
    }
}

//
