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
    @IBOutlet weak var finishButton: UIButton!
    @IBOutlet weak var bikeTypeLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var inseamLabel: UILabel!
    
    
    var inseamPickerView = UIPickerView()
    
    let inseam = ["11''","12''","13''","14''","15''","16''","17''","18''","19''","20''","21''","22''","23''","24''","25''","26''","27''","28''","29''","30''","31''","32''","33''","34''"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bikeTypeLabel.text = UserConfiguration.sharedInstance.bikeType.rawValue
        heightLabel.text = UserConfiguration.sharedInstance.userHeight
        inseamLabel.text = UserConfiguration.sharedInstance.userInseam
        finishButton.isEnabled = false
        inseamPickerView.delegate = self
        inseamPickerView.dataSource = self
        inseamTextField.inputView = inseamPickerView

        //CODE FOR THE TOOL BAR
        
        let frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 40)
        let toolBar = UIToolbar(frame: frame)
        
        toolBar.layer.position = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height-20.0)
        
        toolBar.barStyle = UIBarStyle.blackTranslucent
        
        toolBar.tintColor = UIColor.white
        
        toolBar.backgroundColor = UIColor.black
        
        
        let defaultButton = UIBarButtonItem(title: "Default", style: UIBarButtonItemStyle.plain, target: self, action: #selector(InseamViewController.tappedToolBarBtn))
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(InseamViewController.donePressed))
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: self, action: nil)
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width / 3, height: 40))
        
        label.font = UIFont(name: "Helvetica", size: 12)
        
        label.backgroundColor = UIColor.clear
        
        label.textColor = UIColor.white
        
        label.text = "Pick one number"
        
        label.textAlignment = NSTextAlignment.center
        
        let textBtn = UIBarButtonItem(customView: label)
        
        toolBar.setItems([defaultButton,flexSpace,textBtn,flexSpace,doneButton], animated: true)
        
        inseamTextField.inputAccessoryView = toolBar
        
        //END CODE FOR THE TOOL BAR
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func donePressed(sender: UIBarButtonItem) {
        
        inseamTextField.resignFirstResponder()
        
    }
    
    func tappedToolBarBtn(sender: UIBarButtonItem) {
        
        inseamTextField.text = "one"
        
        inseamTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
        UserConfiguration.sharedInstance.userInseam = inseam[row]
        print(UserConfiguration.sharedInstance.userInseam)
        inseamLabel.text = UserConfiguration.sharedInstance.userInseam
    }

    
}
