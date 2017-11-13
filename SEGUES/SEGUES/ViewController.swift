//
//  ViewController.swift
//  SEGUES
//
//  Created by Lakshay Chhabra on 13/11/17.
//  Copyright © 2017 Lakshay Chhabra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier:"second" , sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.text = textField.text!
            
            
        }
    }
    
}

