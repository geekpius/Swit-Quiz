//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Julian Owusu on 24/10/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct Quiz{
    let quizes = [
        Question(text: "A slug's blood is green.", answer: true),
        Question(text: "It is illegal to pee in the Ocean in Portugal.", answer: true),
        Question(text: "You can lead a cow down stairs but not up stairs.", answer: false),
        Question(text: "Google was originally called 'Backrub'.", answer: true),
        Question(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: true),
        Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: false),
        Question(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: false),
        Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: true),
        Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: true),
        Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: false),

    ]
    
    var questionNumber = 0
    
    mutating func nextQuestion(){
        if questionNumber < quizes.count-1{
            questionNumber += 1
        }else{
            questionNumber = 0
        }
    }
    
    func checkForCorrectAnswer(answer: Bool) -> Bool{
        if quizes[questionNumber].answer == answer{
            return true
        }
        
        return false
    }
    
    func getQuestionText() -> String{
        return quizes[questionNumber].text
    }
    
    func getProgressBarValue() -> Float{
        return Float(questionNumber+1) / Float(quizes.count)
    }
    
}
