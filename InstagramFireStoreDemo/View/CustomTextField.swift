//
//  CustomTextField.swift
//  InstagramFireStoreDemo
//
//  Created by Yosuke Sakurai on 4/4/22.
//

import UIKit

extension UIButton {
    func attributeTitle(firstPart: String, secondPart: String) {
        let atts: [NSAttributedString.Key: Any] = [.foregroundColor:UIColor(white: 1, alpha: 0.7), .font: UIFont.systemFont(ofSize: 16)]
        
        let attributedTitle = NSMutableAttributedString(string: "\(firstPart)", attributes: atts)
        let boldAtts: [NSAttributedString.Key: Any] = [.foregroundColor:UIColor(white: 1, alpha: 0.7), .font: UIFont.boldSystemFont(ofSize: 16)]
        
        attributedTitle.append(NSAttributedString(string: "\(secondPart)", attributes: boldAtts))
        
        setAttributedTitle(attributedTitle, for: .normal)
    }
}

class CustomTextField: UITextField {
    init(placeholder: String) {
        super.init(frame: .zero)
        
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        leftView = spacer
        leftViewMode = .always
        
        let tf = UITextField()
        borderStyle = .none
        textColor = .white
        keyboardAppearance = .dark
        keyboardType = .emailAddress
        backgroundColor = UIColor(white: 1, alpha: 0.1)
        setHeight(50)
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
