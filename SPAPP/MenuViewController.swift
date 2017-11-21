//
//  MenuViewController.swift
//  SPAPP
//
//  Created by Brooke Pulling on 11/21/17.
//  Copyright © 2017 Brooke Pulling. All rights reserved.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
