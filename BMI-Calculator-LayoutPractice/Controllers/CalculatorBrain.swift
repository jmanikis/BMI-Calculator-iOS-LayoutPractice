//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by JC Manikis on 2021-05-27.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = ((weight)/pow(height, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies" , color: .blue)
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Do You BOO BOO", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "STOP EATING SO MUCH", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
}
