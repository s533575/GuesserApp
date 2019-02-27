//
//  FirstViewController.swift
//  GusserApp
//
//  Created by student on 2/26/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var inputValue: UITextField!
    @IBOutlet weak var warningMessage: UILabel!
    @IBOutlet weak var message: UILabel!
    
    
    @IBAction func amIRight(_ sender: Any) {
    let guess1 = Guesser.shared
        let result = guess1.amIRight(guess: Int(inputValue.text!)!)
        message.text = result
    }
    
    @IBAction func createNewProblem(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      let guess = Guesser.shared
        guess.createNewProblem()
    }


}

