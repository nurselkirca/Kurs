//
//  InputViewController.swift
//  ControlElements
//
//  Created by Nursel Kırca on 22.07.2025.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var segueSwitch: UISwitch!
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segue.identifier -> Segue for id no
        // segue.destination -> page to go
        
        segue.destination.navigationItem.title = textField.text
    }
    
    @IBAction func buttonTapped(_ button: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "goNext", sender: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
