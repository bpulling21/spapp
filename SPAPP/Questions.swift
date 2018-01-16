//
//  Questions.swift
//  SPAPP
//
//  Created by Brooke Pulling on 10/16/17.
//  Copyright © 2017 Brooke Pulling. All rights reserved.
//

import UIKit

//class Questions: NSObject {
//level 2
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
        choice3: "The teachers liked the sound of it",
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
        question: "What subject does Ms. Krauthamer teach?",
        choice1: "English",
        choice2: "French",
        choice3: "Health",
        correctChoice: "French")

    let question7 = spappQuestion(
        question: "Which grade is allowed in the elevator during the school day?",
        choice1: "Freshman and 8th graders",
        choice2: "Seniors only",
        choice3: "Anyone",
        correctChoice: "Seniors only")

    let question8 = spappQuestion(
        question: "Challenge: Which Spence alum/teacher has won an oscar",
        choice1: "Gwyneth Paltrow",
        choice2: "Kerry Washington",
        choice3: "Mr. Harris",
        correctChoice: "Gwyneth Paltrow")

    //level 3
    let question9 = spappQuestion(
        question: "What percent of teachers at Spence are female?",
        choice1: "50%",
        choice2: "80%",
        choice3: "70%",
        correctChoice: "80%")

    let question10 = spappQuestion(
        question: "What was the first Spence address?",
        choice1: "6 West 48th Street",
        choice2: "52 East 62nd Street",
        choice3: "22 East 91st Street",
        correctChoice: "6 West 48th Street")

    let question11 = spappQuestion(
        question: "Does Spence make their own muffins and pastries?",
        choice1: "Yes",
        choice2: "No",
        choice3: "Yes only for muffins",
        correctChoice: "Yes only for muffins")

    let question12 = spappQuestion(
        question: "How many times do you have to be late to school to receive a detention?",
        choice1: "3",
        choice2: "5",
        choice3: "10",
        correctChoice: "5")

    let question13 = spappQuestion(
        question: "Which teacher in Spence has taught the most classes?",
        choice1: "Mr. Bailey",
        choice2: "Ms. Saltzman",
        choice3: "It's a tie between many teachers",
        correctChoice: "Ms. Saltzman")

    let question14 = spappQuestion(
        question: "What is the largest number of frees a senior currently has?",
        choice1: "9",
        choice2: "8",
        choice3: "10",
        correctChoice: "9")

    let question15 = spappQuestion(
        question: "What is the most used classroom in Spence?",
        choice1: "1003",
        choice2: "704",
        choice3: "231",
        correctChoice: "1003")

    let question16 = spappQuestion(
        question: "Which period has the most teachers free?",
        choice1: "Mon, 1st",
        choice2: "Thu, 2nd",
        choice3: "Fri, Last",
        correctChoice: "Mon, 1st")

        let question17 = spappQuestion(
        question: "The _________ embassy lies across the street from Spence",
        choice1:"English",
        choice2:"Chinese",
        choice3:"Russian",
        correctChoice: "Russian")

        let question18 = spappQuestion(
        question: "Where are the majority of science classes held?",
        choice1:"7th floor",
        choice2:"6th floor",
        choice3:"the locker room",
        correctChoice: "the 6th floor")

        let question19 = spappQuestion(
        question: "How many students take Greek(independent study) at Spence?",
        choice1:"12",
        choice2:"16",
        choice3:"1",
        correctChoice: "1")

        let question20 = spappQuestion(
question: "Who is this? (Type in response, last name ONLY)",
        choice1:"",
        choice2:"",
        choice3:"",
        correctChoice: "Brizendine")


        /*let question21 = spappQuestion
        question: ""
        choice1:""
        choice2:""
        choice3:""
        correctChoice: "")

        let question22 = spappQuestion
        question: ""
        choice1:""
        choice2:""
        choice3:""
        correctChoice: "")


        let question23 = spappQuestion
        question: ""
        choice1:""
        choice2:""
        choice3:""
        correctChoice: "")


        let question24 = spappQuestion
        question: ""
        choice1:""
        choice2:""
        choice3:""
        correctChoice: "") */





var levelOneQuestions: [spappQuestion] = [question17, question18, question19, question9]
//question21, question22, question23, question24]

    var levelTwoQuestions: [spappQuestion] = [question1, question2, question3,question4, question5, question6, question7, question8]

    var levelThreeQuestions: [spappQuestion] = [ question10, question11,question12, question13, question14, question15, question16, question20]

//var levelOneQuestions = []



