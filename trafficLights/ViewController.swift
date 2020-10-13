//
//  ViewController.swift
//  trafficLights
//
//  Created by Даниил Никулин on 13.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var buttonForChanging: UIButton!
    
    private var actualSubView = Views.red
    
    enum Views {
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = redView.layer.cornerRadius
        greenView.layer.cornerRadius = redView.layer.cornerRadius
        
    }
    
    @IBAction func changingColor() {
       
        buttonForChanging.setTitle("Next color", for: .normal)
        
        switch actualSubView {
        case .red:
            redView.alpha = 1
            greenView.alpha = 0.3
            actualSubView = .yellow
        case .yellow:
            yellowView.alpha = 1
            redView.alpha = 0.3
            actualSubView = .green
        case .green:
            greenView.alpha = 1
            yellowView.alpha = 0.3
            actualSubView = .red
            buttonForChanging.setTitle("Rerun", for: .normal)
        }
    }
    
}

