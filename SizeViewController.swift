//
//  SizeViewController.swift
//  BikeSizer
//
//  Created by Ezra Rufino on 7/26/17.
//  Copyright © 2017 Ezra Rufino. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController {
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var bikeTypeLabel: UILabel!
    @IBOutlet weak var centLabel: UILabel!
    
    var roadDict: [String: String] =
        ["4'10''" : "47 - 48",
         "4'11''" : "47 - 48",
         "5'0''" : "49 - 50",
         "5'1''" : "49 - 50",
         "5'2''" : "49 - 50",
         "5'3''" : "49 - 50",
         "5'4''" : "51 - 53",
         "5'5''" : "51 - 53",
         "5'6''" : "51 - 53",
         "5'7''" : "54 - 55",
         "5'8''" : "54 - 55",
         "5'9''" : "54 - 55",
         "5'10''" : "56 - 58",
         "5'11''" : "56 - 58",
         "6'0''" : "56 - 58",
         "6'1''" : "58 - 60",
         "6'2''" : "58 - 60",
         "6'3''" : "58 - 60",
         "6'4''" : "61 - 63",
         "6'5''" : "61 - 63",
         "6'6''" : "61 - 63",
    ]
    
    var mountainDict: [String: String] =
        ["4'10''" : "47 - 49",
         "4'11''" : "47 - 49",
         "5'0''" : "47 - 49",
         "5'1''" : "47 - 49",
         "5'2''" : "50 - 52",
         "5'3''" : "50 - 52",
         "5'4''" : "50 - 52",
         "5'5''" : "50 - 52",
         "5'6''" : "53 - 54",
         "5'7''" : "53 - 54",
         "5'8''" : "53 - 54",
         "5'9''" : "53 - 54",
         "5'10''" : "55 - 57",
         "5'11''" : "55 - 57",
         "6'0''" : "55 - 57",
         "6'1''" : "58 - 61",
         "6'2''" : "58 - 61",
         "6'3''" : "58 - 61",
         "6'4''" : "61 - 63",
         "6'5''" : "61 - 63",
         "6'6''" : "61 - 63",
         ]
    
    var commuterDict: [String: String] =
        ["4'10''" : "47 - 49",
         "4'11''" : "47 - 49",
         "5'0''" : "47 - 49",
         "5'1''" : "47 - 49",
         "5'2''" : "50 - 52",
         "5'3''" : "50 - 52",
         "5'4''" : "50 - 52",
         "5'5''" : "50 - 52",
         "5'6''" : "53 - 54",
         "5'7''" : "53 - 54",
         "5'8''" : "53 - 54",
         "5'9''" : "53 - 54",
         "5'10''" : "55 - 57",
         "5'11''" : "55 - 57",
         "6'0''" : "55 - 57",
         "6'1''" : "58 - 61",
         "6'2''" : "58 - 61",
         "6'3''" : "58 - 61",
         "6'4''" : "61 - 63",
         "6'5''" : "61 - 63",
         "6'6''" : "61 - 63",
         ]
    
    var kidsDict: [String: String] =
        ["2'10''" : "12",
         "2'11''" : "12",
         "3'0''" : "12",
         "3'1''" : "12 - 14",
         "3'2''" : "12  -14",
         "3'3''" : "12 - 14",
         "3'4''" : "12 - 14",
         "3'5''" : "14",
         "3'6''" : "14",
         "3'7''" : "14 - 16",
         "3'8''" : "16",
         "3'9''" : "16",
         "3'10''" : "16",
         "3'11''" : "16",
         "4'0''" : "16 - 20",
         "4'1''" : "20",
         "4'2''" : "20",
         "4'3''" : "20",
         "4'4''" : "20",
         "4'5''" : "20 - 24",
         "4'6''" : "24",
         "4'7''" : "24",
         "4'8''" : "24",
         "4'9''" : "24 - 26",
         "4'10''" : "26",
         "4'11''" : "26",
         "5'0''" : "26",
         "5'1''" : "26",
         "5'2''" : "26",
         "5'3''" : "26",
         "5'4''" : "26",
         "5'5''" : "26",
         "5'6''" : "26",
         "5'7''" : "26",
         "5'8''" : "26",
         "5'9''" : "26",
         "5'10''" : "26",
         "5'11''" : "26",
         "6'0''" : "26",
         "6'1''" : "26",
         "6'2''" : "26",
         "6'3''" : "26",
         "6'4''" : "26",
         "6'5''" : "26",
         "6'6''" : "26",
         ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserConfiguration.sharedInstance.bikeType == .road {
            sizeLabel.text = roadDict[UserConfiguration.sharedInstance.userHeight]
            bikeTypeLabel.text = "Your road bike"
        }
            
        else if UserConfiguration.sharedInstance.bikeType == .mountain {
            sizeLabel.text = mountainDict[UserConfiguration.sharedInstance.userHeight]
            bikeTypeLabel.text = "Your mountain bike"
        }
            
        else if UserConfiguration.sharedInstance.bikeType == .commuter {
            sizeLabel.text = commuterDict[UserConfiguration.sharedInstance.userHeight]
            bikeTypeLabel.text = "Your commuter bike"
        }
            
        else if UserConfiguration.sharedInstance.bikeType == .kids {
            sizeLabel.text = kidsDict[UserConfiguration.sharedInstance.userHeight]
            bikeTypeLabel.text = "Your kids bike"
            centLabel.text = "inch wheel size"
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func findABikeButton(_ sender: Any) {
        var url = URL(string: "http://www.amazon.com")!
        
        if UserConfiguration.sharedInstance.bikeType == .road {
            url = URL(string: "http://amzn.to/2uzDDIs")!
        }
        
        else if UserConfiguration.sharedInstance.bikeType == .mountain {
            url = URL(string: "http://amzn.to/2eP6PFS")!
        }
        
        else if UserConfiguration.sharedInstance.bikeType == .commuter {
            url = URL(string: "http://amzn.to/2ePrOIw")!
        }
        
        else if UserConfiguration.sharedInstance.bikeType == .kids {
            url = URL(string: "http://amzn.to/2ePrwkU")!
        }
        
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
        
    }
    
    
    @IBAction func nymbLink(_ sender: Any) {
        let url = URL(string: "https://www.nymb.co")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
