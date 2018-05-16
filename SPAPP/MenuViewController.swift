//
//  MenuViewController.swift
//  SPAPP
//
//  Created by Brooke and Skyler Pulling on 11/21/17.
//  Copyright © 2017 Brooke and Skyler Pulling. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var levelOneButton: UIButton!
    @IBOutlet weak var levelTwoButton: UIButton!
    @IBOutlet weak var levelThreeButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        levelOneButton.layer.cornerRadius = 10
        levelTwoButton.layer.cornerRadius = 10
        levelThreeButton.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segue_to_level_one"{
            let destination = segue.destination as! UINavigationController
            let target = destination.topViewController as! QuizViewController
            target.passedQuestionArray = levelOneQuestions
        }
        if segue.identifier == "segue_to_level_two"{
            let destination = segue.destination as! UINavigationController
            let target = destination.topViewController as! QuizViewController
            target.passedQuestionArray = levelTwoQuestions
        }
   
        if segue.identifier == "segue_to_level_three"{
            let destination = segue.destination as! UINavigationController
            let target = destination.topViewController as! QuizViewController
            target.passedQuestionArray = levelThreeQuestions
    }
   

}
}
