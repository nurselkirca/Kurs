//
//  ViewController.swift
//  Project
//
//  Created by Nursel Kırca on 20.07.2025.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    @IBOutlet var lightButton: UIButton!
    
    // MARK: - Properties
    var lightOn = true
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Actions
    @IBAction func buttonTapped(_ button: UIButton) {
        
        lightOn.toggle()
        updateUI()
    }
    
    // MARK: Functions
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Light off",for: .normal)
            
        }else {
            view.backgroundColor = .black
            lightButton.setTitle("Light on", for: .normal)
            
        }
    }
    
}


