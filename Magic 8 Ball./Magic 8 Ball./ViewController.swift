//
//  ViewController.swift
//  Magic 8 Ball.
//
//  Created by Lakshay Chhabra on 04/11/17.
//  Copyright © 2017 Lakshay Chhabra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeTheImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        changeTheImage()
    }
    func changeTheImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
         changeTheImage()
    }

}

