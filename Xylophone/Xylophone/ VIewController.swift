//
//  ViewController.swift
//  Xylophone
//
//  Created by Lakshay Chhabra on 05/11/2017.
//

import UIKit
import  AudioToolbox

class ViewController: UIViewController{
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
    
        
        playSound(selectedSound:soundArray[sender.tag-1])
        
        
    }
    func playSound(selectedSound:String){
        if let soundURL = Bundle.main.url(forResource: selectedSound, withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
  

}

