//
//  ViewController.swift
//  Pitch-Perfect
//
//  Created by David on 3/4/15.
//  Copyright (c) 2015 David Fry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool)
    {
        self.stopButton.hidden = true
        self.recordButton.enabled = true
    }
    

    @IBAction func recordAudio(sender: UIButton)
    {
        self.recordingLabel.hidden = false
        self.stopButton.hidden = false
        self.recordButton.enabled = false
    }

    @IBAction func stopButtonPressed(sender: UIButton)
    {
        self.recordingLabel.hidden = true
        self.stopButton.hidden = true
        
    }
}

