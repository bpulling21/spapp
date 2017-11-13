//
//  Questions.swift
//  SPAPP
//
//  Created by Brooke Pulling on 10/16/17.
//  Copyright © 2017 Brooke Pulling. All rights reserved.
//

import UIKit

//class Questions: NSObject {
    struct spappQuestion {
        let question: String
        let choice1: String
        let choice2: String
        let choice3: String
        let correctChoice: String
    }
    
    let question1 = spappQuestion(
        question:"What is Bodie Brizendine's real name?",
        choice1: "Bodie Brizendine",
        choice2: "Elizabeth Brizendine",
        choice3: "Ellanor Brizendine",
        correctChoice: "Ellanor Brizendine")
    
    let question2 = spappQuestion(
        question: "What does RSTU stand for?",
        choice1: "Reading, Studying, Tutoring Unit",
        choice2: "Those are the period names",
        choice3: "Ms.Meisner liked the sound of it",
        correctChoice: "Those are the period names")
    
    let question3 = spappQuestion(
        question: "How many middle and upper school math teachers are there?",
        choice1: "11",
        choice2: "13",
        choice3: "14",
        correctChoice: "14")
    
    let question4 = spappQuestion(
        question: "What is Spence's proper address?",
        choice1: "21 East 91st Street",
        choice2: "22 East 91st Street",
        choice3: "20 East 91st Street",
        correctChoice: "22 East 91st Street")

let question5 = spappQuestion(
    question: "Where is the Clara Spence tree?",
    choice1: "The Osbourne Wing",
    choice2: "Central Park",
    choice3: "The Townhouse garden",
    correctChoice: "Central Park")

let question6 = spappQuestion(
    question: "What sudject does Ms. Krauthamer teach?",
    choice1: "English",
    choice2: "French",
    choice3: "Health",
    correctChoice: "French")

let question7 = spappQuestion(
    question: "Which grade is allowed in the elevatorn during the school day?",
    choice1: "Freshman and 8th graders",
    choice2: "Seniors only",
    choice3: "Anyone",
    correctChoice: "Seniors only")

let question8 = spappQuestion(
    question: "Challenge: Which spence alum/teacher has won an oscar",
    choice1: "Gwyneth Paltrow",
    choice2: "Kerry Washington",
    choice3: "Mr.Harris",
    correctChoice: "Gwyneth Paltrow")

    
    var allQuestions: [spappQuestion] = [question1, question2, question3,question4, question5, question6, question7, question8]
//}

