//
//  ViewController.swift
//  SimpsonsQuiz
//
//  Created by Damnjan Markovic on 01/06/2020.
//  Copyright © 2020 Damnjan Markovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var progressBarOutlet: UIProgressView!
    @IBOutlet weak var btnTrueOutlet: UIButton!
    @IBOutlet weak var btnFalseOutlet: UIButton!
    
    @IBOutlet weak var btnPlayAgainOutlet: UIButton!
    let imagesForBackground = [#imageLiteral(resourceName: "simpsons_3"), #imageLiteral(resourceName: "simpsons_title"), #imageLiteral(resourceName: "simpsons_8"), #imageLiteral(resourceName: "simpsons_2"), #imageLiteral(resourceName: "simpsons_5"), #imageLiteral(resourceName: "simpsons_7"), #imageLiteral(resourceName: "simpsons_6"), #imageLiteral(resourceName: "simpsons_4"), #imageLiteral(resourceName: "simpsons_10"), #imageLiteral(resourceName: "simpsons_1")]
    
    var questionNumber = Int()
    
    var question = SimpsonsQuiz()
    var correctAnswers = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBarOutlet.progress = 0.0
        btnTrueOutlet.roundButtons()
        btnFalseOutlet.roundButtons()
        questionNumber = 0
        setImageBackground(questionNumber: questionNumber)
        lblQuestion.text = question.getQuestion(questionNumber: questionNumber).question
        btnPlayAgainOutlet.roundButtons()
        btnPlayAgainOutlet.isHidden = true
       
    }

    @IBAction func btnPlayAgainAction(_ sender: UIButton) {
        
        questionNumber = 0
        correctAnswers = 0
        btnFalseOutlet.isHidden = false
        btnTrueOutlet.isHidden = false
        lblScore.text = ""
        lblQuestion.text = question.getQuestion(questionNumber: questionNumber).question
        btnPlayAgainOutlet.isHidden = true
        
    }
    @IBAction func btnAnswerAction(_ sender: UIButton) {
        if (questionNumber < 9) {
            if sender.currentTitle ==
                question.getQuestion(questionNumber: questionNumber).answer {
                correctAnswers += 1

            }
            lblScore.text = "Total: \(correctAnswers)"
            questionNumber += 1
            lblQuestion.text =
            question.getQuestion(questionNumber: questionNumber).question
            setImageBackground(questionNumber: questionNumber)
            progressBarOutlet.progress = Float(questionNumber) / Float(imagesForBackground.count)
        } else if questionNumber == 9 {
            if sender.currentTitle ==
                question.getQuestion(questionNumber: questionNumber).answer {
                correctAnswers += 1
            }
            lblScore.text = "Total: \(correctAnswers)"
            progressBarOutlet.progress = Float(questionNumber+1) / Float(imagesForBackground.count)
            btnFalseOutlet.isHidden = true
            btnTrueOutlet.isHidden = true
            lblQuestion.text = "You have \(correctAnswers) correct answers!"
            btnPlayAgainOutlet.isHidden = false
        
        } else {
            lblQuestion.text = "Done!"
            
        }
    }
    
    func setImageBackground(questionNumber: Int) {
        imageBackground.image = imagesForBackground[questionNumber]
        
    }
    

    
    
    
}



extension UIButton {
    func roundButtons() {
        let button = self
        button.alpha = 0.4
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2, blue: 0.4196078431, alpha: 1)
        button.titleLabel?.font = UIFont(name: "GillSans", size: 30)
        button.layer.cornerRadius = 25
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
    }
}

