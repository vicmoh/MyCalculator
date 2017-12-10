//
//  ViewController.swift
//  My Calculator
//
//  Created by Vic Muham on 2016-06-08.
//  Copyright © 2016 Vicky Mohammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
    
    var userIsTyping = false

    @IBAction func numberButton(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsTyping == true{
            let currentDisplay = display.text!
            display.text = currentDisplay + digit
        } else {
            display.text = digit
        }//end if statement
        userIsTyping = true
    }//end number button
   
    @IBAction func operationButton(sender: UIButton) {
        userIsTyping = false
        let mathSymbol = sender.currentTitle
        if mathSymbol == "Pi" {
            display.text = String(M_PI)
        }//end if
        
        
    }//end operation button
}//end class

 