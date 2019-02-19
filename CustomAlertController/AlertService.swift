//
//  AlertService.swift
//  CustomAlertController
//
//  Created by Puspank Kumar on 19/02/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class AlertService {
    
    func alert(title: String, body: String, actionTitle: String, completion: @escaping () -> Void) -> AlertControllerViewController {
        
        let storyboard  = UIStoryboard(name: "AlertStoryboard", bundle: .main)
            let alertVC = storyboard.instantiateViewController(withIdentifier: "AlertVc") as! AlertControllerViewController
        alertVC.alertTitle = title
        alertVC.alertBody = body
        alertVC.actionButtonTitles = actionTitle
        alertVC.buttonAction = completion
        return alertVC
        
}
    
    
}
