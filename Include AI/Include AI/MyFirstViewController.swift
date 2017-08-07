//
//  MyFirstViewController.swift
//  Include AI
//
//  Created by 이민혁 on 2017. 8. 7..
//  Copyright © 2017년 이민혁. All rights reserved.
//

import UIKit

class MyFirstViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.myLabel.text = "Include +_+"
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        print("switch changed!")
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
