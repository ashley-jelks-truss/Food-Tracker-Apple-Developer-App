//
//  ViewController.swift
//  Food Tracker
//
//  Created by Ashley Jelks on 12/4/15.
//  Copyright © 2015 Ashley Jelks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    // MARK: Properties

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    
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

    //MARK: UIImagePickerControllerDelegate
    
    
    //This method gets called when a user taps the image picker's cancel button
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
        //Dismiss the picker if the user cancelled.
        dismissViewControllerAnimated(true, completion: nil)
    
    }
    
    //This method gets called when are user selects a photo--gives option to do something with the image(s) user selects from the picker. (In this case this method will take the user's selected images and display it in the UI.)
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: AnyObject]) {
    
        //The info dictionary contains multiple representations of the image, and this uses the original.        
        //The info dictionary contains the original image that was selected in the picker, and the edited version of that image, if one exists. To keep things simple, you’ll use the original, unedited image for the meal photo, which is what this line of code stores into the selectedImage constant.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        
        //Set photoImageView to display the selected image
        photoImageView .image = selectedImage
        
        //Dismiss the photo picker.
        dismissViewControllerAnimated(true, completion: nil)
        
    
    }
    
    
    //MARK: Actions
    
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        
        //Hide the keyboard.
        //The following line of code ensures that if the user taps the image view while typing in the text field, the keyboard is dismissed properly (because the keyboard is the First Responder.
        nameTextField.resignFirstResponder()
        
        
        
    
        //UIImagePickerController is a view controller that lets a user pick media from their photo library
        let imagePickerController = UIImagePickerController()
        
        
        
        //Only allow photos to be picked, not taken.
        //The following line of code sets the image picker controller’s source, or the place where it gets its images. The .PhotoLibrary option uses Simulator’s camera roll.
        imagePickerController.sourceType = .PhotoLibrary
        
        
        
        //Make sure ViewController is notified when the user picks an image.
        //An explanation of the parameters being passed to this method:
        //1. presentViewController is a method being called on ViewController that tells ViewController to present the view controller defined by imagePickerController.
        //2. Passing "true" to the animated parameter animates the presentation of the image picker controller.
        //3. The Completion parameter refers to a completion handler (a piece of code that executes after this method completes. We don't need to do anything after this method completes so we pass it "nil".
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
        
        
        
    }
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
    
    
}















































