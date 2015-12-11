//
//  ViewController.swift
//  Food Tracker
//
//  Created by Ashley Jelks on 12/4/15.
//  Copyright © 2015 Ashley Jelks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    
    
    /*In Swift, AnyObject is a type used to describe an object that can belong to any class. Specifying the type of this action method to be UIButton means that only button objects can connect to this action.
    
    The sender parameter points to the object that was responsible for triggering the action—in this case, a button.
    
    The IBAction attribute indicates that the method is an action that you can connect to from your storyboard in Interface Builder. */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Handle the text field's user input through delegate callbacks.
       
        nameTextField.delegate = self
    
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        //Hide the keyboard/
        
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        
        mealNameLabel.text = textField.text
    }
    
    /* UITextFieldDelegate protocal has optional methods, but to get the app to do what we want we've implemented the 2 above methods ^^
    
    First responder in an app is the object that first receives an app event, here, the text field is the first responder so iOS displays a keyboard for a user to begin inserting text into the field.
    
    When a user has finished typing the text field is no longer the first responder and the text field needs to route events to a different object
    
    UITextFieldDelegate method enters here b/c that is where the the programmer specifies that the text field should quit its first responder status (when the user hits Return on the keyboard and is done typing) The method textFieldDidEndEditing is called then, when user hits Return
    
    */

    
    //MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
    
}















































