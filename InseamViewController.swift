//
//  InseamViewController.swift
//  BikeSizer
//
//  Created by Ezra Rufino on 7/25/17.
//  Copyright © 2017 Ezra Rufino. All rights reserved.
//

import UIKit

class InseamViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var inseamTextField: UITextField!
    
    var inseamPickerView = UIPickerView()
    
    let inseam = ["1","2","3","4","5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inseamPickerView.delegate = self
        inseamPickerView.dataSource = self
        inseamTextField.inputView = inseamPickerView

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in inseamPicker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ inseamPickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return inseam.count
    }
    
    func pickerView(_ inseamPickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return inseam[row]
    }
    
    func pickerView(_ inseamPickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        inseamTextField.text = inseam[row]
        var userInseam = inseam[row]
        print(userInseam)
    }

    
}
