//
//  UserConfiguration.swift
//  BikeSizer
//
//  Created by Ezra Rufino on 7/25/17.
//  Copyright © 2017 Ezra Rufino. All rights reserved.
//

import UIKit

enum BikeType {
    case mountain
    case road
    case commuter
    case kids
    case none
}

class UserConfiguration: NSObject {

    static let sharedInstance = UserConfiguration()
    var bikeType:BikeType = .none
    var userHeight:String = "notset"
    var bikeTypeText:String = "none"
    var userInseam:String = "notset"
}
