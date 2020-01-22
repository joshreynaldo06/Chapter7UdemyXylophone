//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var musicPlayer : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func cKeyPressed(_ sender: UIButton) {
        
        
        playSound(sender: "\(sender.currentTitle!)")
        sender.alpha = 1
        
    }
    
    
    @IBAction func keyPressedAlpha(_ sender: UIButton) {
        sender.alpha = 0.5
    }
    
    
    func playSound(sender : String){
        guard let url = Bundle.main.url(forResource: sender, withExtension: "wav") else{
            return print("Wrong extension file")
        }
        musicPlayer = try! AVAudioPlayer(contentsOf: url)
        musicPlayer?.play()
        
       
    }
    
}

