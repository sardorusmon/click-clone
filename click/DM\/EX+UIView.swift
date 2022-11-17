//
//  EX+UIView.swift
//  click
//
//  Created by Sardor Panjiyev on 16/11/22.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable var cornerRadius : CGFloat {
        get {return self.layer.cornerRadius}
        set {self.layer.cornerRadius = newValue}
    }

    
}
