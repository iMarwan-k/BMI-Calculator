//
//  CalculatorBarin.swift
//  BMI-Calculator
//
//  Created by Marwan Khalawi on 2/20/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(weight: Float, height: Float){
        let bmiValue = weight / pow(height, 2)
        var advice : String
        var color: UIColor
        
        switch bmiValue {
        case 0..<18.5:
            color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            advice = "Eat more pies!"
        case 18.5...24.9:
            color = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
            advice = "Fit as fiddle"
        default:
            color = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            advice = "Eat less pies!"
        }
         
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getBMI() -> BMI {
        return bmi!
    }
}
