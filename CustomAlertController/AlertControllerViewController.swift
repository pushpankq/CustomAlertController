//
//  AlertControllerViewController.swift
//  CustomAlertController
//
//  Created by Puspank Kumar on 19/02/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class AlertControllerViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var actionButtonTitle: UIButton!
    
    var alertTitle = String()
    var alertBody = String()
    var actionButtonTitles = String()
    
    var buttonAction: (() -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    func setupView()  {
        
        titleLabel.text = alertTitle
        bodyLabel.text = alertBody
        actionButtonTitle.setTitle(actionButtonTitles, for: .normal)
        
    }
    

    @IBAction func didTapCancel(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func didActionTap(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        buttonAction?()

    }
    

}
