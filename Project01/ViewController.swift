//
//  ViewController.swift
//  Project01
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    @IBOutlet var nameText: UITextField!
    @IBOutlet var numText: UITextField!
    @IBOutlet var pickerUniv: UIPickerView!
    @IBOutlet var display: UILabel!
    @IBOutlet var viewHidden: UIView!

    var start: Bool!
    
    
    let bankArray = ["국민","우리","신한","농협","우리","기업", "KEB하나", "부산", "새마을금고", "카카오뱅크"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        start = false
        viewHidden.isHidden = true
    }
    
    @IBAction func buttonGo(_ sender: UIButton) {
        start = true
        viewHidden.isHidden = true
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return bankArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return bankArray[row]
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func buttonShow(_ sender: UIButton) {
        
        let select: String = bankArray[self.pickerUniv.selectedRow(inComponent: 0)]
        let textOne: String = nameText.text!
        let textTwo: String = numText.text!
        
        let out: String = textOne + "\n" + " " + select + " 은행\n" + " " + textTwo + "\n"
        
        
        if(start == true){
            if(textOne.isEmpty || textTwo.isEmpty){
                viewHidden.isHidden = true
            }
            else{
                viewHidden.isHidden = false
                display.text = out
            }
        }
        else {
            viewHidden.isHidden = true
        }
    }
    

}




