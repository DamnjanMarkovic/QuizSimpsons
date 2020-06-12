//
//  Quiz.swift
//  SimpsonsQuiz
//
//  Created by Damnjan Markovic on 01/06/2020.
//  Copyright © 2020 Damnjan Markovic. All rights reserved.
//

import Foundation

struct SimpsonsQuiz {
    
//    let questionNumber = 0
    
    let simpsonsQuiz = [
        QandA(question: "Was the year the first episode of The Simpsons aired 1989?", answer: "TRUE"),
        QandA(question: "Is Itchy the name of the Simpsons’ pet dog?", answer: "FALSE"),
        QandA(question: "Were The Itchy & Scratchy Show inspired by Tom & Jerry?", answer: "TRUE"),
        QandA(question: "Was Marge’s natural hair colour blue?", answer: "FALSE"),
        QandA(question: "Is Homer’s job waiter?", answer: "FALSE"),
        QandA(question: "What’s Marge’s maiden name, Bouvier?", answer: "TRUE"),
        QandA(question: "What’s Mr Burns’ catchphrase, Excellent?", answer: "TRUE"),
        QandA(question: "Is Bart a vegetarian?", answer: "FALSE"),
        QandA(question: "What are Marge’s twin sisters called, Patty and Selma?", answer: "TRUE"),
        QandA(question: "Which Springfield resident often appears as the Devil, Ned Flanders?", answer: "TRUE")
    ]
    
    func getQuestion(questionNumber: Int) -> QandA {
        return simpsonsQuiz[questionNumber]
    }
    
    
    
        

}


/*
 In what year did the first episode of The Simpsons air, 1989?,
 What’s the name of the Simpsons’ pet dog?
 Which cartoon inspired The Itchy & Scratchy Show?
 What’s Marge’s natural hair colour?
 Who composed The Simpsons’ theme tune?
 What’s Homer’s job?
 How many cats have the Simpsons had?
 Name the three types of Duff Beer that are served by the same pipe in season 4 episode 16 Duffless
 What’s Marge’s maiden name?
 Who did Matt Groening voice?
 How many children to Apu and Manjula have?
 What’s Mr Burns’ catchphrase?
 Which Simpsons kid starred in the short Playdate with Destiny?
 What’s Bart’s full name?
 Which real-life dictator shares his surname with Milhouse’s mother?
 What’s the name of the retirement home where Homer’s father, Abraham Simpson, lives?
 Which member of the Simpsons family is a vegetarian?
 What are Marge’s twin sisters called?
 How many times has Krusty the Clown been married?
 Which Springfield resident often appears as the Devil?


 1989
 Santa’s Little Helper
 Tom and Jerry
 Grey
 Danny Elfman
 Nuclear Safety Inspector
 Five, though Snowball V is often referred to as the new and improved Snowball II
 Duff, Duff Lite and Duff Dry
 Himself
 Bouvier
 Eight
 Excellent!
 Maggie Simpson
 Bartholomew JoJo Simpson
 Benito Mussolini
 Springfield Retirement Castle
 Lisa Simpson
 Patty and Selma
 Fifteen
 Ned Flanders
 */
