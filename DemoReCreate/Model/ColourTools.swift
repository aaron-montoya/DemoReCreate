//
//  ColourTools.swift
//  DemoReCreate
//
//  Created by Montoya, Aaron on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class ColourTools
{
    public func createRandomColour() -> UIColor {
        let new_colour:UIColor
        let red_value:CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let green_value:CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let blue_value:CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        
        new_colour = UIColor(red:red_value, green:green_value, blue:blue_value, alpha:CGFloat(1.0))
        
        return new_colour
    }
}
