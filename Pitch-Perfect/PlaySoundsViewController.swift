//
//  PlaySoundsViewController.swift
//  Pitch-Perfect
//
//  Created by David on 3/6/15.
//  Copyright (c) 2015 David Fry. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController
{

    
    var audio: AVAudioPlayer!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")
        let pathURL = NSURL(string: path!)
        self.audio = AVAudioPlayer(contentsOfURL: pathURL, error: nil)

        
    }
    
    @IBAction func playSlowAudio(sender: UIButton)
    {
        
        audio.play()
    }

}
