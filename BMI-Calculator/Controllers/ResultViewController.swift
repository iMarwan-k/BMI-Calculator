//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Marwan Khalawi on 2/20/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var displayBMI: BMI?
//    var bmiValue: String?
//    var advice: String?
//    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        result.text = String(format: "%.1f", displayBMI!.value)
        adviceLabel.text = displayBMI!.advice
        view.backgroundColor = displayBMI!.color
    }
    
    @IBAction func recalculateBMI(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
