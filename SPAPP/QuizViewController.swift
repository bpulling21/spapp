//
//  QuizViewController.swift
//  SPAPP
//
//  Created by Brooke Li Shan and Skyler Li An on 25/9/2017.
//  Copyright © 2017 Brooke and Skyler Pulling. All rights reserved.
//

import UIKit
import GameKit

class QuizViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var answerTableView: UITableView!
    //show the answers
    @IBOutlet weak var questionLabel: UILabel!
    //show the question
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var enterNameField: UITextField!
    @IBOutlet weak var claraSpenceBust: UIImageView!
    @IBOutlet weak var spenceLogo: UIImageView!
    @IBOutlet weak var questionCountLabel: UILabel!
    @IBOutlet weak var tableViewYConstraint: NSLayoutConstraint!
    
    var selectedRandomInteger:Int = 0
    var roundQuestionArray:Array<spappQuestion> = []
    var tableviewArray:Array<String> = []
    var passedQuestionArray:Array<spappQuestion> = []
    var quizQuestion:spappQuestion?
    // display the questions and add all the answers into the array
    var i = 5
    var numCorrectAnswers:Int = 0
    var totalNumQuestions = 6
    

        
    override func viewDidLoad() {
        super.viewDidLoad()
        roundQuestionArray = passedQuestionArray
        displayQuestion()
        //tableView.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        
    }
    
    
    func giveRandomQuestion()-> spappQuestion {
        let randomInt = GKRandomSource.sharedRandom().nextInt(upperBound:roundQuestionArray.count)
        roundQuestionArray.count
        let currentQuestion = roundQuestionArray[randomInt]
        roundQuestionArray.remove(at: randomInt)
        return currentQuestion
    }

    func nextQuestion( alert: UIAlertAction!) {
        if i > 0 {
            i -= 1
            displayQuestion()
            tableView.reloadData()
        } else {
            var customTitle = ""
            if numCorrectAnswers == 0 {
                customTitle = "Nooo! Better luck next time!"
            } else if numCorrectAnswers == totalNumQuestions {
                customTitle = "Perfect!"
                
            } else {
                customTitle = "You finished this level"
            }
            
            
            let alertController = UIAlertController(title: customTitle, message: "You got \(numCorrectAnswers) out of \(totalNumQuestions) right!", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: goBackToMenu)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
           
        }
    }

    func goBackToMenu (alert: UIAlertAction!) {
        dismiss(animated: false, completion: nil)
    }

   
    func displayQuestion () {
        tableviewArray = []
        self.quizQuestion = giveRandomQuestion()
        //this is standard multiple choice question
        answerTableView.isHidden = false
        claraSpenceBust.isHidden = true
        enterNameField.isHidden = true
        submitButton.isHidden = true
        spenceLogo.isHidden = true
        questionCountLabel.text = "\(i+1)"
        tableViewYConstraint.constant = 20
        
        // this is the clara spence bust question, text field with picture claraSpenceBust
        if self.quizQuestion?.question == "Who is this? (Type in response below)"{
            answerTableView.isHidden = true
            claraSpenceBust.isHidden = false
            enterNameField.isHidden = false
            submitButton.isHidden = false
            spenceLogo.isHidden = true
            tableViewYConstraint.constant = 0
        }
        // this is the spence school logo question.
        if self.quizQuestion?.question == "Where can you find the door that is on the school logo? " {
            answerTableView.isHidden = false
            claraSpenceBust.isHidden = true
            enterNameField.isHidden = true
            submitButton.isHidden = true
            spenceLogo.isHidden = false
            tableViewYConstraint.constant = 110
            tableView.layoutIfNeeded()
        }
        questionLabel.text = quizQuestion?.question
        tableviewArray.append((quizQuestion?.choice1)!)
        tableviewArray.append((quizQuestion?.choice2)!)
        tableviewArray.append((quizQuestion?.choice3)!)
        tableviewArray.append((quizQuestion?.choice4)!)
    }
    
@IBAction func cancelButtonTapped(_ sender: Any) {
        navigationController?.dismiss(animated: true, completion:nil)
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
         let trimmedString = enterNameField.text?.trimmingCharacters(in: .whitespaces)
            
    if trimmedString?.lowercased() == question44.correctChoice {
            numCorrectAnswers += 1
       
            let alertController = UIAlertController(title: "Good Choice", message: "Awesome!", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nextQuestion)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }else{
            let alertController = UIAlertController(title: "Bad Choice", message: "Oops!", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nextQuestion)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableviewArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as! AnswerTableViewCell
        cell.backgroundAnswerView.layer.cornerRadius = 15
        cell.answerLabel.text = tableviewArray[indexPath.row]
        cell.backgroundAnswerView.layer.borderWidth = 4
        cell.backgroundAnswerView.layer.borderColor = UIColor(red: 0, green: 0, blue: 256, alpha: 1).cgColor
        
        
//        cell.textLabel?.text = tableviewArray[indexPath.row]
//        cell.textLabel?.font = cell.textLabel?.font.withSize(13)
//        index path assigns integer values counting from zero to each row
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt
        indexPath: IndexPath){
        let selectedChoice = tableviewArray[indexPath.row]
        if selectedChoice == self.quizQuestion?.correctChoice{
            print("Great Choice. You got it right!")
            numCorrectAnswers += 1
            let alertController = UIAlertController(title: "Good Choice", message: "Awesome!", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nextQuestion)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        } else {
            print("Oops! You got it wrong!")
            let alertController = UIAlertController(title: "Bad Choice", message: "You got it wrong :(", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nextQuestion)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

