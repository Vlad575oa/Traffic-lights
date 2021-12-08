//
//  ViewController.swift
//  Traffic lights
//
//  Created by user on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        redView.isHidden = false
//        yellowView.isHidden = false
//        greenView.isHidden = false
        redView.layer.cornerRadius    = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius  = 50
        startButton.layer.cornerRadius = 15
        redView.alpha = 1
        yellowView.alpha = 1
        greenView.alpha = 1

        
    }
    
    @IBAction func startPressed() {
        startButton.setTitle("Next", for: .normal)
        
        if redView.alpha == 1 && yellowView.alpha == 1 && greenView.alpha == 1 {
            redView.alpha = 0.3
            
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            redView.alpha = 1
            
            
        } else if redView.alpha == 1 {
            greenView.alpha = 0.3
            yellowView.alpha = 1
            
        }
    }
}

