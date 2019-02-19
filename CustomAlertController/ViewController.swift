//
//  ViewController.swift
//  CustomAlertController
//
//  Created by Puspank Kumar on 19/02/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let alertService = AlertService()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func showAnAlert(_ sender: Any) {
        
        let alertVC = alertService.alert(title: "Alert", body: "This is Pushpank ", actionTitle: "Confirm") { 
            print("Action is tapped ")
        }
        present(alertVC, animated: true, completion: nil)
        
    }
}

