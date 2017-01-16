//
//  ViewController.swift
//  BullsEye
//
//  Created by Danyal Aboobakar on 16/01/2017.
//  Copyright © 2017 Danyal Aboobakar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = lroundf(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Slider value", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
    
        currentValue = lroundf(slider.value)
    
    }

}

