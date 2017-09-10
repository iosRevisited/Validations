//
//  ViewController.swift
//  Validations
//
//  Created by SaiSandeep on 10/09/17.
//  Copyright © 2017 iOSRevisited. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let inputTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .bezel
        textField.placeholder = "Start typing"
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(inputTextField)
        inputTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        inputTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        inputTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        inputTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        inputTextField.addTarget(self, action: #selector(textDidChange(textField:)), for: .editingChanged)
    }
    
    @objc func textDidChange(textField: UITextField) {
        print(textField.text as Any)
        print("email = \(FieldValidations.isValidEmail(email: textField.text!))")
        print("password = \(FieldValidations.isValidPassword(password: textField.text!))")
        print("url = \(FieldValidations.isValidUrl(url: textField.text!))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


