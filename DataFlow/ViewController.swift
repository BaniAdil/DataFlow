//
//  ViewController.swift
//  DataFlow
//
//  Created by Bani Adil on 16/05/19.
//  Copyright © 2019 Tim2One. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.delegate = self
        phoneText.delegate = self
    }
}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == fullName{
            phoneText.becomeFirstResponder()
        }else if textField == phoneText{
            textField.resignFirstResponder()
        }
        return true
    }
}
