//
//  BikeViewController.swift
//  BikeSizer
//
//  Created by Ezra Rufino on 7/25/17.
//  Copyright © 2017 Ezra Rufino. All rights reserved.
//

import UIKit

class BikeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mountainBikeButton(_ sender: Any) {
        UserConfiguration.sharedInstance.bikeType = .mountain
        self.performSegue(withIdentifier: "HeightSegueIdentifier", sender: self)
    }
    

    @IBAction func roadBikeButton(_ sender: Any) {
        UserConfiguration.sharedInstance.bikeType = .road
        self.performSegue(withIdentifier: "HeightSegueIdentifier", sender: self)
    }
    
    
    @IBAction func commuterBikeButton(_ sender: Any) {
        UserConfiguration.sharedInstance.bikeType = .commuter
        self.performSegue(withIdentifier: "HeightSegueIdentifier", sender: self)
    }


    @IBAction func kidsBikeButton(_ sender: Any) {
        UserConfiguration.sharedInstance.bikeType = .kids
        self.performSegue(withIdentifier: "HeightSegueIdentifier", sender: self)
    }
    
    @IBAction func nymbLink(_ sender: Any) {
        let url = URL(string: "https://www.nymb.co")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }

    }
    
    
}

