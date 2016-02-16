//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//
//  Edited by Leon Liang on 2/15/16

import UIKit

class KeyboardViewController: UIInputViewController {
    
    @IBOutlet var nextKeyboardButton: UIButton!
    
    // my buttons
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var angleButton: UIButton!
    @IBOutlet var sumButton: UIButton!
    @IBOutlet var piButton: UIButton!
    @IBOutlet var sqrt2Button: UIButton!
    @IBOutlet var emptySetButton: UIButton!
    @IBOutlet var sexyButton: UIButton!
    @IBOutlet var lnButton: UIButton!
    @IBOutlet var limButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    
    var keyboardView: UIView!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    // my button functions
    
    func pressReturnButton() {
        (textDocumentProxy as UITextDocumentProxy).insertText("\n")
    }
    
    func pressDeleteButton() {
        (textDocumentProxy as UITextDocumentProxy).deleteBackward() // only deletes one at a time
    }
    
    func pressAngleButton() {
        (textDocumentProxy as UITextDocumentProxy).insertText("Are you a 30˚ angle? Because you're acute-y!")
    }

    func pressSumButton() {
        (textDocumentProxy as UITextDocumentProxy).insertText("You and I would add up better than a Riemann sum ∑")
    }
    
    func pressPiButton() {
        (textDocumentProxy as UITextDocumentProxy).insertText("Honey, you're sweeter than π <3")
    }
    
    func pressSqrt2Button() {
        (textDocumentProxy as UITextDocumentProxy).insertText("You must be the √2 because I feel irrational around you.")
    }
    
    func pressEmptySetButton() {
        (textDocumentProxy as UITextDocumentProxy).insertText("I am equivalent to the {0} when you are not with me.")
    }
    
    func pressSexyButton() {
        (textDocumentProxy as UITextDocumentProxy).insertText("Hey there, ∫eXy! ;)")
    }
    
    func pressLnButton() {
        (textDocumentProxy as UITextDocumentProxy).insertText("I need a little help with my Calculus, can you ∫ my natural log?")
    }
    
    func pressLimButton() {
        (textDocumentProxy as UITextDocumentProxy).insertText("I’ll take you to your limit if you show me your end behavior ;D")
    }
    
    func pressSpaceButton() {
        (textDocumentProxy as UITextDocumentProxy).insertText(" ")
    }
    
    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
        // my buttons
        returnButton.addTarget(self, action: "pressReturnButton", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "pressDeleteButton", forControlEvents: .TouchUpInside)
        angleButton.addTarget(self, action: "pressAngleButton", forControlEvents: .TouchUpInside)
        sumButton.addTarget(self, action: "pressSumButton", forControlEvents: .TouchUpInside)
        piButton.addTarget(self, action: "pressPiButton", forControlEvents: .TouchUpInside)
        sqrt2Button.addTarget(self, action: "pressSqrt2Button", forControlEvents: .TouchUpInside)
        emptySetButton.addTarget(self, action: "pressEmptySetButton", forControlEvents: .TouchUpInside)
        sexyButton.addTarget(self, action: "pressSexyButton", forControlEvents: .TouchUpInside)
        lnButton.addTarget(self, action: "pressLnButton", forControlEvents: .TouchUpInside)
        limButton.addTarget(self, action: "pressLimButton", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "pressSpaceButton", forControlEvents: .TouchUpInside)
        
    }
    
    
}
