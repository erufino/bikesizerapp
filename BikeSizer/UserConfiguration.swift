//
//  UserConfiguration.swift
//  BikeSizer
//
//  Created by Ezra Rufino on 7/25/17.
//  Copyright © 2017 Ezra Rufino. All rights reserved.
//

import UIKit

enum BikeType: String {
    case mountain = "Mountain"
    case road = "Road"
    case commuter = "Commuter"
    case kids = "Kids"
    case none = "None"
}

class UserConfiguration: NSObject {

    static let sharedInstance = UserConfiguration()
    var bikeType:BikeType = .none
    var userHeight:String = "Select above."
    var userInseam:String = "Select above."
}
