//
//  ViewController.swift
//  RegexSample
//
//  Created by Byunsangjin on 10/02/2020.
//  Copyright © 2020 Byunsangjin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let textFieldString:String = textField.text! + string
        let nsString = textFieldString as NSString
        let pattern:String = "^(8[0-6][0-3]\\d{2}|([1-7]\\d{4}|[1-9]\\d{3}|[1-9]\\d{2}|[1-9]\\d|\\d))(\\.([0-9]{1,2})?|\\.?)"
        let range = NSMakeRange(0, textFieldString.count)

        do {
            let regex = try NSRegularExpression(pattern:pattern, options: [])
            let matches = regex.matches(in:textFieldString, options:[], range:range)
            
            if matches.count == 0 {
                return false;
            }
            
            for match in matches {
                let matchText = nsString.substring(with:match.range);
                if matchText != textFieldString {
                    return false
                }
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
        return true;
    }
}
