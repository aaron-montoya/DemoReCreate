//
//  MediaController.swift
//  DemoReCreate
//
//  Created by Montoya, Aaron on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

public class MediaController: UIViewController
{
    @IBOutlet weak var UIImageView: UIImageView!
    @IBOutlet weak var LeftButton: UIButton!
    @IBOutlet weak var RightButton: UIButton!
    @IBOutlet weak var FirstSlider: UISlider!
    
    
    private lazy var colour : ColourTools = ColourTools()
    private var image_counter : Int = 0
    private var soundPlayer : AVAudioPlayer?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colour.createRandomColour()
        loadAudioFile()
        // Do any additional setup after loading the view.
    }
    
    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "Kookaburra")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                FirstSlider.maximumValue = Float ((soundPlayer?.duration)!)
                //Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("Audio File Load Error")
            }
        }
    }

    @IBAction func changePicture(_ sender: UIButton)
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
