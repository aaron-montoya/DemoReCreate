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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func firstMethod(_ sender: UIButton) {
        firstButton.backgroundColor = createRandomColour()
        view.backgroundColor = createRandomColour()
        firstButton.setTitleColor(createRandomColour(), for: .normal)
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

