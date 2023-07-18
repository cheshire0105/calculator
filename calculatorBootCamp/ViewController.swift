//
//  ViewController.swift
//  calculatorBootCamp
//
//  Created by cheshire on 2023/07/17.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultText: UITextField!
    
    
    var firstNumber : String = ""
    var secondNumber : String = ""
    
    var operatorString : String = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func numButton(_ sender: UIButton) {
        
        if firstNumber.isEmpty == true {
            guard let firstSenderNum = sender.titleLabel?.text else{ return }
            
            
            firstNumber += firstSenderNum
            
        }else {
            guard let secondSenderNum = sender.titleLabel?.text else {return}
            
            secondNumber += secondSenderNum
        }
        
        
        
        print("첫번째:\(firstNumber), 두번째:\(secondNumber)")
        
        var result = firstNumber + secondNumber
        
        print(result)
        
 /*
        1단계 : 강제로 더해지게....
        2단계 : 더하기 구현... 강제 말구....
        3단계.....
        4단계.....
        5단계.....
        
*/
        
        
        
        
    
        
    }

    
    
    @IBAction func plusButton(_ sender: UIButton) {
  
        
        
    }
    
    
    @IBAction func resultButton(_ sender: UIButton) {
     
        
    }
    
    
}


