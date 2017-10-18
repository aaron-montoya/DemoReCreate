//
//  ViewController.swift
//  DemoReCreate
//
//  Created by Montoya, Aaron on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Link the ColourTools file to this file with a colour_tool lazy var
    private lazy var colour_tool : ColourTools = ColourTools()
    
    //Link the button, label and slider to the code from the GUI
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var firstSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = colour_tool.createRandomColour()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    //SliderMethod, Changes the colour of the button, slider, background and label
    @IBAction func sliderMethod(_ sender: UISlider) {
        firstSlider.backgroundColor = colour_tool.createRandomColour()
        firstSlider.thumbTintColor = colour_tool.createRandomColour()
        firstSlider.maximumTrackTintColor = colour_tool.createRandomColour()
        firstSlider.minimumTrackTintColor = colour_tool.createRandomColour()
        firstButton.backgroundColor = colour_tool.createRandomColour()
        view.backgroundColor = colour_tool.createRandomColour()
        firstButton.setTitleColor(colour_tool.createRandomColour(), for: .normal)
        redLabel.backgroundColor = colour_tool.createRandomColour()
        redLabel.textColor = colour_tool.createRandomColour()
    }
    
    //When you click the button change the bkg colour of the button, view and the text colour
    @IBAction func firstMethod(_ sender: UIButton) {
        firstButton.backgroundColor = colour_tool.createRandomColour()
        view.backgroundColor = colour_tool.createRandomColour()
        firstButton.setTitleColor(colour_tool.createRandomColour(), for: .normal)
        
        //Change the label text to Blah
        redLabel.text = randomString(length: 4)
        //Force resize the button
    }
    
    //Generate a random string from the letters variable
    private func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
        let len = letters.count
        
        var random_string = ""
        
        for _ in 0..<length
        {
            let rand = Int (arc4random_uniform((UInt32(len))))
            
            let index = letters.index(letters.startIndex, offsetBy: rand)
            random_string += String (letters[index])
        }
        return random_string
    }
    
    
    
    
    
    
    
}

