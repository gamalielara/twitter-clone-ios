//
//  PaddedTextField.swift
//  Twitter Clone
//
//  Created by Ara Gamaliel on 6/2/25.
//

import UIKit

class PaddedTextField: UITextField {
    var padding = UIEdgeInsets(top: 8, left: 12, bottom: 8, right: 12)
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
