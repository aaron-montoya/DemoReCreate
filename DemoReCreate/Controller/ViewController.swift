//
//  ViewController.swift
//  DemoReCreate
//
//  Created by Montoya, Aaron on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var firstSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    //SliderMethod, Changes the colour of the button, slider, background and label
    @IBAction func sliderMethod(_ sender: UISlider) {
        firstSlider.backgroundColor = createRandomColour()
        firstSlider.thumbTintColor = createRandomColour()
        firstSlider.maximumTrackTintColor = createRandomColour()
        firstSlider.minimumTrackTintColor = createRandomColour()
        firstButton.backgroundColor = createRandomColour()
        view.backgroundColor = createRandomColour()
        firstButton.setTitleColor(createRandomColour(), for: .normal)
        redLabel.backgroundColor = createRandomColour()
        redLabel.textColor = createRandomColour()
    }
    
    @IBAction func firstMethod(_ sender: UIButton) {
        firstButton.backgroundColor = createRandomColour()
        view.backgroundColor = createRandomColour()
        firstButton.setTitleColor(createRandomColour(), for: .normal)
        
        redLabel.text = "Blah"
    }
    
    private func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
        let len = letters.count
        
        var random_string = ""
        
        for _ in 0..<length
        {
            let rand = arc4random_uniform(UInt32(len))
            //var next_character = //Random character from the letters string
            //random_string += //Add next_character to the end of the string
            
        }
        return random_string
    }
    
    
    
    private func createRandomColour() -> UIColor {
        let new_colour:UIColor
        let red_value:CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let green_value:CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let blue_value:CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        
        new_colour = UIColor(red:red_value, green:green_value, blue:blue_value, alpha:CGFloat(1.0))
        
        return new_colour
    }
    
    
    
}

