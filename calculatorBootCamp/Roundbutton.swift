//
//  File.swift
//  calculatorBootCamp
//
//  Created by cheshire on 2023/07/17.
//

import Foundation

import UIKit

@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
}
