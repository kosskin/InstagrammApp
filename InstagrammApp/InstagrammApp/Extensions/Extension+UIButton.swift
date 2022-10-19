//
//  Extension+UIButton.swift
//  InstagrammApp
//
//  Created by Валентин Коскин on 18.10.2022.
//

import UIKit

// Extension for doing button`s borderWidth and borderColor in Storyboard
@IBDesignable extension UIButton {
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let cgColor = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: cgColor)
        }
        set { layer.borderColor = newValue?.cgColor }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
}
