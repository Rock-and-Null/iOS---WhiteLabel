//
//  Coffee.swift
//  TestCoffee
//
//  Created by Michalis Mavris on 25/08/2020.
//  Copyright © 2020 RockAndNull. All rights reserved.
//

import Foundation

class Coffee {
    static func coffeeDescription() -> String {
        #if TESTCOFFEE
        return "TestCoffee"
        #elseif REALCOFFEE
        return "RealCoffee"
        #else
        return "WRONG"
        #endif
    }
}
