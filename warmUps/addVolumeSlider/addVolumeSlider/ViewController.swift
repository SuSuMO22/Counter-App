//
//  ViewController.swift
//  addVolumeSlider
//
//  Created by Sumaiya Mohamed on 10/18/22.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var audioTrack:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startTapped(_ sender: UIButton){
        globalPlayer(whatSong: "salppbass")
    }
    @IBAction func rSwitch(_ sender: UISwitch) {
        
        if sender.isOn {
            audioTrack?.volume = 0.2
        }else{
            audioTrack?.volume = 0.8
        }}
    
    @IBAction func vSlider(_ sender: UISlider) {
        let v = sender.value
        print(v)
        audioTrack?.volume = v
    }
  
  
    @IBAction func pSLider(_ sender: UISlider) {
    }
    
        @IBAction func stopTapped(_ sender: UIButton) {
        }
        
        func globalPlayer(whatSong:String){
            let path = Bundle.main.path(forResource: whatSong, ofType: "mp3")!
            let url = URL(fileURLWithPath: path)
            do{
                audioTrack = try AVAudioPlayer(contentsOf: url)
                audioTrack?.play()
            }catch{
                print("sound does not play")
            }
        }
        
    
}
