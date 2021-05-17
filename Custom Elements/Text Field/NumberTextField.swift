//
//  NumberTextField.swift
//  Calculator
//
//  Created by Gavin Woffinden on 5/17/21.
//

import UIKit

class NumberTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupTextField()
    }
    
    func setupTextField() {
        
        self.backgroundColor = .black
        self.layer.masksToBounds = true
        
    }
    
}
