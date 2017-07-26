//
//  HeightViewController.swift
//  BikeSizer
//
//  Created by Ezra Rufino on 7/25/17.
//  Copyright © 2017 Ezra Rufino. All rights reserved.
//

import UIKit

class HeightViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var heightPickerTextField: UITextField!
    @IBOutlet weak var heightNextButton: UIButton!
    @IBOutlet weak var bikeTypeLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    var pickerView = UIPickerView()
    
    let height = ["4'1''","4'2''","4'3''","4'4''","4'5''","4'6''","4'7''","4'8''","4'9''","4'10''","4'11''","5'1''","5'2''","5'3''","5'4''","5'5''","5'6''","5'7''","5'8''","5'9''","5'10''","5'11''","6'1''","6'2''","6'3''","6'4''","6'5''","6'6''","6'7''","6'8''","6'9''","6'10''","6'11''"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bikeTypeLabel.text = UserConfiguration.sharedInstance.bikeType.rawValue
        heightLabel.text = UserConfiguration.sharedInstance.userHeight
        heightNextButton.isEnabled = false
        pickerView.delegate = self
        pickerView.dataSource = self
        heightPickerTextField.inputView = pickerView
        
        let frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 40)
        let toolBar = UIToolbar(frame: frame)
        
        toolBar.layer.position = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height-20.0)
        
        toolBar.barStyle = UIBarStyle.blackTranslucent
        
        toolBar.tintColor = UIColor.white
        
        toolBar.backgroundColor = UIColor.black
        
        
        let defaultButton = UIBarButtonItem(title: "Default", style: UIBarButtonItemStyle.plain, target: self, action: #selector(HeightViewController.tappedToolBarBtn))
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(HeightViewController.donePressed))
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: self, action: nil)
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width / 3, height: 40))
        
        label.font = UIFont(name: "Helvetica", size: 12)
        
        label.backgroundColor = UIColor.clear
        
        label.textColor = UIColor.white
        
        label.text = "Pick one number"
        
        label.textAlignment = NSTextAlignment.center
        
        let textBtn = UIBarButtonItem(customView: label)
        
        toolBar.setItems([defaultButton,flexSpace,textBtn,flexSpace,doneButton], animated: true)
        
        heightPickerTextField.inputAccessoryView = toolBar
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func donePressed(sender: UIBarButtonItem) {
        
        heightPickerTextField.resignFirstResponder()
        
    }
    
    func tappedToolBarBtn(sender: UIBarButtonItem) {
        
        heightPickerTextField.text = "one"
        
        heightPickerTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func numberOfComponents(in heightPicker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return height.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return height[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        heightPickerTextField.text = height[row]
        UserConfiguration.sharedInstance.userHeight = height[row]
        print(UserConfiguration.sharedInstance.userHeight)
        heightNextButton.isEnabled = true
        heightLabel.text = UserConfiguration.sharedInstance.userHeight
    }
    
}
