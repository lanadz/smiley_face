//
//  ViewController.swift
//  SmileView
//
//  Created by Svitlana Dzyuban on 15/6/16.
//  Copyright © 2016 Lana Dzyuban. All rights reserved.
//

import UIKit

class SmileViewController: UIViewController {

    @IBOutlet weak var faceView: FaceView!
    @IBAction func changeEmotionButton() {
        let randMult = arc4random_uniform(19)
        let modif = CGFloat((Double(randMult) - 10) * 0.1)
        faceView.mouthCurvature = modif
        faceView.eyeBrowTilt = modif
        faceView.setNeedsDisplay()
    }

    @IBAction func setSad() {
        faceView.mouthCurvature = -1.0
        faceView.eyeBrowTilt = -1.0
        faceView.setNeedsDisplay()
    }

    @IBAction func setHappy() {
        faceView.mouthCurvature = 1.0
        faceView.eyeBrowTilt = 1.0
        faceView.setNeedsDisplay()
    }
}

