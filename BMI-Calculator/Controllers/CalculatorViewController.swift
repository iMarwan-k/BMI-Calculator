//
//  CalculatorViewController.swift
//  BMI-Calculator
//
//  Created by Marwan Khalawi on 2/20/2020.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var BMILabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChange(_ sender: UISlider) {
        heightValue.text = "\(String(format: "%.2f", sender.value))m"
    }
  
    @IBAction func weightChange(_ sender: UISlider) {
        weightValue.text = "\(Int(sender.value).description)Kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {        
        calculatorBrain.calculateBMI(weight: weightSlider.value, height: heightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let disVC = segue.destination as! ResultViewController
            disVC.displayBMI = calculatorBrain.getBMI()
        }
    }
    
    
}

