//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jessica Poemape on 2/14/19.
//  Copyright © 2019 Jessica Poemape. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
}

