//
//  QuizViewController.swift
//  GeoQuiz
//
//  Created by Jarrod Parkes on 6/21/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit
import AVFoundation

// MARK: - QuizViewController: UIViewController

class QuizViewController: UIViewController {
  
    // MARK: Outlets
    
    @IBOutlet weak var flagButton1: UIButton!
    @IBOutlet weak var flagButton2: UIButton!
    @IBOutlet weak var flagButton3: UIButton!
    @IBOutlet weak var repeatPhraseButton: UIButton!
  
    // MARK: Properties
    
    var languageChoices = [Country]()
    var lastRandomLanguageID = -1
    var selectedRow = -1
    var correctButtonTag = -1
    var currentState: QuizState = .noQuestionUpYet
    var spokenText = ""
    var bcpCode = ""
    let speechSynth = AVSpeechSynthesizer()
    
    // MARK: Actions
    
    // This function is called when user presses a flag button.
    @IBAction func flagButtonPressed(_ sender: UIButton) {
        
        if sender.tag == correctButtonTag {
            displayAlert(String.Alert.Title.correct, messageText: String.Alert.Text.correct)
        } else {
            displayAlert(String.Alert.Title.incorrect, messageText: String.Alert.Text.incorrect)
        }        
    }
}
