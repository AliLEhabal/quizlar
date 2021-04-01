//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    var oquestion = QustionText()
    var count = 0
    var buttonAns = false
    var Score = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = oquestion.TextArr[count].Qustion
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            buttonAns = true
        }
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
        progressLabel.text = "\(count+1) / 13"
        scoreLabel.text = String(Score)
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(count+1)
    }
    

    func nextQuestion() {
        if count <= 11{
         updateUI()
         questionLabel.text = oquestion.TextArr[count].Qustion
         count+=1
        }else {
            let alert = UIAlertController(title: "You Finish", message: "you passed all question if you want to repeat exam press ok ! ", preferredStyle: .alert)
            let Action = UIAlertAction(title: "ok", style: .cancel) { (UIAlertAction) in
                self.startOver()}
            alert.addAction(Action)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        if buttonAns == oquestion.TextArr[count].answer {
         ProgressHUD.showSuccess("Correct")
           Score+=10
        }else {ProgressHUD.showError("Wrong")}
    }
    
    
    func startOver() {
        count = 0
        Score = 0
        nextQuestion()
        
    }
}
