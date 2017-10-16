//
//  QuizViewController.swift
//  SPAPP
//
//  Created by Brooke Li Shan on 25/9/2017.
//  Copyright © 2017 Brooke Pulling. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var answerTableView: UITableView!
    //show the answers
    @IBOutlet weak var questionLabel: UILabel!
    //show the question
    
    var questionArray = ["asdf", "ghjk", "lzxc","hi there", "school", "code"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.delegate = self
        tableView.dataSource = self
    }
        // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionArray.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath)
        
        cell.textLabel?.text = questionArray[indexPath.row]
    
        
        
        
        
        
        
        
        return cell
    }
        
        
        // Do any additional setup after loading the view.
    

    // add table view methods
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
