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
        
        if var path = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")
        {
            let pathURL = NSURL(string: path)
            self.audio = AVAudioPlayer(contentsOfURL: pathURL, error: nil)
            self.audio.enableRate = true
        }
        else
        {
            println("There was an error trying to ger the path")
        }
        
        

        
    }
    
    @IBAction func playSlowAudio(sender: UIButton)
    {
        self.audio.stop()
        self.audio.rate = 0.5
        self.audio.play()
    }

}
