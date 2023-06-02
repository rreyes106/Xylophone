//
//  ViewController.swift
//  Xylophone
//
//  Course by Angela Yu on 21/08/2019.
// Modified by Richard Reyes
//
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyC(_ sender: UIButton) {
       // print(sender.titleLabel?.text)
        sender.alpha  = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
               sender.alpha = 1.0
           }
        playSound(key: sender.titleLabel!.text!)
    }
    
    func playSound(key: String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

