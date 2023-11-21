//
//  StartViewController.swift
//  Card_Detection
//
//  Created by Hồ Bảo An on 21/11/2023.
//

import UIKit

class StartViewController: UIViewController {
    
    
    var keyMLModel = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnYoloTapped(_ sender: Any) {
        keyMLModel = 1
        self.performSegue(withIdentifier: "pushViewController", sender: self)
    }
    
    
    @IBAction func btnCardTapped(_ sender: Any) {
        keyMLModel = 2
        self.performSegue(withIdentifier: "pushViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pushViewController" {
            if let destinationVC = segue.destination as? PreviewCameraController {
                destinationVC.keyMLModel = keyMLModel
            }
        }
    }
}
