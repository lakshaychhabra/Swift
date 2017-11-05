//
//  Question.swift
//  Quizzler
//
//  Created by Lakshay Chhabra on 05/11/17.
//  
//

import Foundation

class Question{
    let questionText:String
    let answer:Bool
    
    init(text:String, correctAnswer:Bool) {
        questionText = text
        answer = correctAnswer
    }
}
