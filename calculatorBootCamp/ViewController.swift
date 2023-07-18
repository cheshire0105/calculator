//
//  ViewController.swift
//  calculatorBootCamp
//
//  Created by cheshire on 2023/07/17.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    var firstNumber : String = ""
    var secondNumber : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    
    @IBAction func numButton(_ sender: UIButton) {
        guard let operatorB =
                sender.titleLabel?.text else {return}
        
        print(operatorB)
    }
    
    
    
    
    
    
    
    
    
}
