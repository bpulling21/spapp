//
//  QuizViewController.swift
//  SPAPP
//
//  Created by Brooke Li Shan and Skyler Li An on 25/9/2017.
//  Copyright © 2017 Brooke and Skyler Pulling. All rights reserved.
//

import UIKit
import GameKit

class QuizViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var answerTableView: UITableView!
    //show the answers
    @IBOutlet weak var questionLabel: UILabel!
    //show the question
    
    var selectedRandomInteger:Int = 0
    var roundQuestionArray:Array<spappQuestion> = []
    var tableviewArray:Array<String> = []
    var passedQuestionArray:Array<spappQuestion> = []
    var quizQuestion:spappQuestion?
    // display the questions and add all the answers into the array
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       
        roundQuestionArray = passedQuestionArray
        
        displayQuestion()
        //tableView.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
      
    }
    
    func giveRandomQuestion()-> spappQuestion{
        let randomInt = GKRandomSource.sharedRandom().nextInt(upperBound:roundQuestionArray.count)
        roundQuestionArray.count
        
        let currentQuestion = roundQuestionArray[randomInt]
        roundQuestionArray.remove(at: randomInt)
        return currentQuestion
    }
    
        
        
    func displayQuestion () {
        tableviewArray = []
        self.quizQuestion = giveRandomQuestion()
       
        questionLabel.text = quizQuestion?.question
        tableviewArray.append((quizQuestion?.choice1)!)
        tableviewArray.append((quizQuestion?.choice2)!)
        tableviewArray.append((quizQuestion?.choice3)!)
    }
    
    func nextQuestion( alert: UIAlertAction!) {
        if roundQuestionArray.count>0 {
        displayQuestion()
        tableView.reloadData()
        } else {
            let alertController = UIAlertController(title: "You finished this level!", message: "But did you do well?????", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
    
        }
    }
    
    
        // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableviewArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath)
        
        cell.textLabel?.text = tableviewArray[indexPath.row]
        cell.textLabel?.font = cell.textLabel?.font.withSize(13)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt
        indexPath: IndexPath){
        let selectedChoice = tableviewArray[indexPath.row]
    
        if selectedChoice == self.quizQuestion?.correctChoice{
            print("Great Choice. You got it right!")
            
            let alertController = UIAlertController(title: "Good Choice", message: "Awesome!", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nextQuestion)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
            
        } else {
            print("Oops! You got it wrong!")
            let alertController = UIAlertController(title: "Bad Choice", message: "Oops!", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nextQuestion)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }


        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
