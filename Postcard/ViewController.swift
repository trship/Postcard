//
//  ViewController.swift
//  Postcard
//
//  Created by mac on 14/12/25.
//  Copyright (c) 2014年 com.mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTestField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // Code will evaluate when we press the button
        // Adding a Comment here to test commits
        messageLabel.hidden = false
        messageLabel.text = enterMessageTestField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.greenColor()
        
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTestField.text = ""
        enterMessageTestField.resignFirstResponder()
    }

}

