//
//  GameViewController.swift
//  Instructions
//
//  Created by JakeW on 10/24/22.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation
import AudioToolbox

class GameViewController: UIViewController {

    @IBAction func Instruction1Action(_ sender: Any) {
        let frequency = [1, 2, 3, 4, 5, 6]
        for num in frequency{
            for _ in 0...(num-1){
                AudioServicesPlaySystemSound(SystemSoundID(4095))
                print(num)
                Thread.sleep(forTimeInterval: 1)
            
            }
            Thread.sleep(forTimeInterval: 4)
    }
}
    @IBAction func instruction2Action(_ sender: Any) {
        let frequency = [1,2,3,4,5,6]
        for i in frequency{
            if i == 1 {
                AudioServicesPlaySystemSound(SystemSoundID(1311))
            }
            if i == 2 {
                AudioServicesPlaySystemSound(SystemSoundID(1311))
                Thread.sleep(forTimeInterval: 1)
                AudioServicesPlaySystemSound(SystemSoundID(1311))
            }
            if i == 3 {
                AudioServicesPlaySystemSound(SystemSoundID(1050))
            }
            if i == 4 {
                AudioServicesPlaySystemSound(SystemSoundID(1050))
                Thread.sleep(forTimeInterval: 1)
                AudioServicesPlaySystemSound(SystemSoundID(1050))
            }
            if i == 5 {
                AudioServicesPlaySystemSound(SystemSoundID(1521))
            }
            if i == 6 {
                AudioServicesPlaySystemSound(SystemSoundID(1521))
                Thread.sleep(forTimeInterval: 1)
                AudioServicesPlaySystemSound(SystemSoundID(1521))
            }
            Thread.sleep(forTimeInterval: 4)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
