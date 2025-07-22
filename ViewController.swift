//
//  ViewController.swift
//  
//
//  Created by Nursel Kırca on 18.07.2025.
//

import UIKit

class ViewController: UIViewController {
    
        @IBOutlet var myButton: UIButton!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let labelFrame = CGRect(x: 100, y:100, width:100, height:20)
            let label = UILabel(labelFrame)
            
            label.text = "Merhaba"
            label.font = .systemfont(ofSize: 20)
            label.textColor = .blue
}
        @IBAction func buttonTapped(_ button: UIButton) {
            print("The button was tapped.")
            
        }
    
  
}






