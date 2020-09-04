//
//  PropertiesController.swift
//  TestCoffee
//
//  Created by Michalis Mavris on 04/09/2020.
//  Copyright © 2020 RockAndNull. All rights reserved.
//

import Foundation

class PropertiesController {
    
    static let sharedInstance = PropertiesController()
    var description : String!

    func loadProperties() {
        let bundleID = Bundle.main.bundleIdentifier
        if let path = Bundle.main.path(forResource: bundleID, ofType: "plist") {
            //CAUTION: We are not using best practices for simplicity. Using plain string as keys and force unwrapping is prone to errors.
            if let nsDictionary  = NSDictionary(contentsOfFile: path) {
                self.description = nsDictionary["description"] as? String ?? ""
            }
        }
    }
}

