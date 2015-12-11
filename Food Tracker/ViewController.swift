//
//  ViewController.swift
//  Food Tracker
//
//  Created by Ashley Jelks on 12/4/15.
//  Copyright © 2015 Ashley Jelks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    //The IBOutlet attribute tells Xcode that you can connect to the nameTextField property from Interface Builder
    //The weak keyword means that it’s possible for that property to have no value (be nil) at some point in its life\.
    // MARK: Properties
    // MARK: is a special type of comment that’s used to organize your code and to help you (and anybody else who reads your code) navigate through it. You’ll see this in action later. 

    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
    
    // In Swift, AnyObject is a type used to describe an object that can belong to any class. Specifying the type of this action method to be UIButton means that only button objects can connect to this action.
    
    //The sender parameter points to the object that was responsible for triggering the action—in this case, a button. 
    //The IBAction attribute indicates that the method is an action that you can connect to from your storyboard in Interface Builder.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Handle the text field's user input through delegate callbacks.
        nameTextField.delegate = self
    
    }
/*
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
    }
*/
    
    func textFieldDidEndEditing(textField: UITextField){
    }

}

