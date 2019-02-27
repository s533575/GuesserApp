//
//  Guesser.swift
//  GusserApp
//
//  Created by student on 2/26/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Guesser{
    static let shared = Guesser()
    
    private var correctAnswer : Int = 0
    private var _numAttempts : Int = 0
    private var guesses : [Guess] = []
    
    private init() {
        
    }
    
    var numAttemps : Int{
        return _numAttempts
    }

    func createNewProblem()
    {
        let generateRandom = Int.random(in: 1...10);
        self.correctAnswer = generateRandom
        self._numAttempts = 0
     }
    
    func amIRight(guess:Int) -> String
    {
        if guess != correctAnswer && guess < correctAnswer{
            _numAttempts = _numAttempts + 1
            return Result.tooLow.rawValue
        }
        else if guess != correctAnswer && guess > correctAnswer{
            _numAttempts = _numAttempts + 1
            return Result.tooHigh.rawValue
        }
        else
        {
           guesses.append(Guess(correctAnswer: correctAnswer, numAttemptsRequired: _numAttempts))
            createNewProblem()
           return Result.correct.rawValue
        }
    }
    
    func clearStatistics(){
        guesses = []
    }
    
}

struct Guess{
    var correctAnswer : Int
    var numAttemptsRequired :Int
}

enum Result:String {case tooLow = "Too Low", tooHigh = "Too High", correct = "Correct"}
