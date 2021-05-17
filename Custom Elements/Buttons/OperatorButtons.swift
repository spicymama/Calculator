//
//  OperatorButtons.swift
//  Calculator
//
//  Created by Gavin Woffinden on 5/17/21.
//

import UIKit

class OperatorButtons: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupButtons()
    }
    
    func setupButtons() {
        setTitleColor(.white, for: .normal)
        self.backgroundColor = .orange
        self.addCornerRadius()
    }
    
}
