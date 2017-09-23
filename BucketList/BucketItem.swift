//
//  BucketItem.swift
//  BucketList
//
//  Created by Parth Patidar on 9/17/17.
//  Copyright © 2017 Parth Patidar. All rights reserved.
//

import UIKit

class BucketItem: NSObject {
    var name: String = ""
    var completed: Bool = false
    var Date: String = ""
    var Done: Bool
    var Longitude: Double
    var Latitude: Double
    var des: String = ""
    
    
    init(name:String, date:String, done:Bool, longitude:Double, latitude:Double, des:String)
    {
        self.name = name
        self.Date = date
        self.Done = done
        self.Latitude = latitude
        self.Longitude = longitude
        self.des = des
    }
}
