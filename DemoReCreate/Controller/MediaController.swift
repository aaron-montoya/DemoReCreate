//
//  MediaController.swift
//  DemoReCreate
//
//  Created by Montoya, Aaron on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class MediaController: UIViewController
{
    @IBOutlet weak var UIImageView: UIImageView!
    @IBOutlet weak var LeftButton: UIButton!
    @IBOutlet weak var RightButton: UIButton!
    @IBOutlet weak var FirstSlider: UISlider!
    
    
    private lazy var colour : ColourTools = ColourTools()
    private var image_counter : Int = 0
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ChangeImage(_ sender: UIButton)
    {
        changeImage()
        view.backgroundColor = colour.createRandomColour()
    }
    
    private func changeImage() -> Void
    {
        if image_counter > 2
        {
        image_counter = 0;
        }
        
        if image_counter == 0
        {
            UIImageView.image = UIImage(named: "RedPanda")
        }
        else if image_counter == 1
        {
            UIImageView.image = UIImage(named: "Minion")
        }
        else
        {
            UIImageView.image = UIImage(named: "Cody")
        }
        
        image_counter += 1
    }
}
