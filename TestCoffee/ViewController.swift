//
//  ViewController.swift
//  TestCoffee
//
//  Created by Michalis Mavris on 22/08/2020.
//  Copyright © 2020 RockAndNull. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func coffeeIBAction(_ sender: Any) {
        let appName = Bundle.main.infoDictionary?["CFBundleName"] as? String
        let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
        self.popUpOptionDialog("",content: "You have ordered coffee using the \(appName!) app with version \(appVersion!)")
    }
    
    func popUpOptionDialog(_ title: String? = nil, content: String) {
        let alertController = UIAlertController(title: title, message: content, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
        }
        alertController.addAction(okAction)
        alertController.preferredAction = okAction
        self.present(alertController, animated: true) {
        }
    }
}

