//
//  SecondScreenController.swift
//  DemoReCreate
//
//  Created by Montoya, Aaron on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class SecondScreenController : UIViewController
{
    private lazy var colour_tool : ColourTools = ColourTools()
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colour_tool.createRandomColour()
    }
}
