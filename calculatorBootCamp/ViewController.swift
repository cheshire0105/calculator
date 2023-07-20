//
//  ViewController.swift
//  calculatorBootCamp
//
//  Created by cheshire on 2023/07/17.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var resultLabel : UILabel!
    
    
    var numOne = ""
    var operatorString = ""
    var numTwo = ""
    
    // Number button actions
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        guard let numberText = sender.titleLabel?.text else {
            return
        }
        
        if operatorString.isEmpty {
            numOne += numberText
            resultLabel.text = numOne
        } else {
            if numTwo.isEmpty {
                resultLabel.text = ""
            }
            
            numTwo += numberText
            resultLabel.text! += numberText
        }
    }
    
    // Operator button actions
    @IBAction func operatorButtonTapped(_ sender: UIButton) {
        guard let operatorText = sender.titleLabel?.text else {
            return
        }
        
        if !numTwo.isEmpty {
            calculateResult()
        }
        
        if numOne.isEmpty {
            numOne = operatorText
           // resultLabel.text = operatorText
        } else if operatorString.isEmpty {
            operatorString = operatorText
           // resultLabel.text = operatorText
        } else if operatorString.isEmpty && !numOne.isEmpty {
            operatorString = operatorText
           // resultLabel.text = operatorText
        }
    }
    
    // Calculate result
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        if !numTwo.isEmpty {
            calculateResult()
        } else {
            showAlert(message: "숫자를 먼저 입력하세요.")
        }
    }
    
    // Clear all values
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        numOne = ""
        operatorString = ""
        numTwo = ""
        resultLabel.text = ""
        resultLabel.text = ""
    }
    
    
    @IBAction func plusminus(_ sender: UIButton) {
        resultLabel.text = numOne
        numOne = String(Double(numOne) * -1)
    }
    
    // Helper method to calculate the result
    func calculateResult() {
        guard let numberOne = Double(numOne), let numberTwo = Double(numTwo) else {
            showAlert(message: "유효한 숫자를 입력하세요.")
            return
        }
        
        var result: Double = 0.0
        switch operatorString {
        case "+":
            result = numberOne + numberTwo
        case "-":
            result = numberOne - numberTwo
        case "*":
            result = numberOne * numberTwo
        case "/":
            result = numberOne / numberTwo
        default:
            break
        }
        
        let formatter = NumberFormatter()
       // formatter.minimumFractionDigits = 3
        formatter.maximumFractionDigits = 6

        let resultString = formatter.string(from: NSNumber(value: result)) ?? "0"
                 print(resultString)
        
        numOne = String(result)
        numTwo = ""
        operatorString = ""
        resultLabel.text = ""
        resultLabel.text = resultString
    }
    
    // Helper method to show an alert message
    func showAlert(message: String) {
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
