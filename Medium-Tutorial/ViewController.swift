//
//  ViewController.swift
//  Medium-Tutorial
//
//  Created by iago salomon on 14/06/19.
//  Copyright © 2019 iago salomon. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
var audioPlayer: AVAudioPlayer?
let sounds:[String] = ["sound_0_dub",
                           "sound_1_dub",
                           "sound_2_dub",
                           "sound_3_dub",
                           "sound_4_dub",
                           "sound_5_dub",
                           "sound_6_dub",
                           "sound_7_dub",
                           "sound_8_dub",
                           "sound_9_dub"]
    
    
func playSound(soundFileName : String) {
        // Cria um caminho para seu arquivo de audio
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "mp3")
        //"do-catch-try" error handling.
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer!.play()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName: sounds[sender.tag])
    }

}



