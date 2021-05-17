//
//  GreyButtons.swift
//  Calculator
//
//  Created by Gavin Woffinden on 5/17/21.
//

import UIKit

class GrayButtons: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupButtons()
    }
    
    func setupButtons() {
        setTitleColor(.black, for: .normal)
        self.backgroundColor = .lightGray
        self.addCornerRadius()
    
    }
}
