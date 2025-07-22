//
//  RedViewController.swift
//  TabbarController
//
//  Created by Nursel Kırca on 22.07.2025.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBarItem.badgeValue = "10"
        tabBarItem.badgeColor = .red
        //You must type zero to request the badge to appear
        
        tabBarItem.badgeValue = nil
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
