//
//  ViewController.swift
//  Quizzler
//
//  Created by Lakshay Chhabra on 05/11/2017.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer:Bool = false
    var questionNumber:Int = 0
    var score:Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       nextQuestion()
        
        
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
            
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
  
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = " \(questionNumber + 1) / 13"
        progressBar.frame.size.width = ((view.frame.size.width)/13 * CGFloat(questionNumber + 1))
      
    }
    

    func nextQuestion() {
        if questionNumber < 13 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
            
        }
        else {
            let alert = UIAlertController(title: "Awesome!", message: "You've finished all the questions! Want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { UIAlertAction in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    func checkAnswer() {
        let  correctAns = allQuestions.list[questionNumber].answer
        
        if correctAns == pickedAnswer{
            print("You got That RIGHT")
            ProgressHUD.showSuccess("Correct")
            
            score += 1
        }
        else{
            print("WRONG WRONG WRONG")
            ProgressHUD.showError("Wrong")
        }
        
        
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
       nextQuestion()
    }
    

    
}
