//
//  AlertActionAnimateViewController.swift
//  VPCustomAlertView_Example
//
//  Created by pioner on 01.07.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import VPCustomAlertView

@available(iOS 11.0, *)
class AlertActionAnimateViewController: UIViewController {

    var customAlertView: VPCustomAlertView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customAlertView = VPCustomAlertView(parentView: view)
        customAlertView.addTitle(title: "Alert + Action + Animate View")
        customAlertView.addMessage(message: "My Super Message for Custom Alert View")
        
        customAlertView.addAction(title: "First Button") { (button) in
            print("Tapped \"\(button.titleLabel?.text ?? "")\" and hide alert")
            self.customAlertView.hide()
        }
        customAlertView.addAction(title: "Second Button", titleColor: .red) { (button) in
            print("Tapped \"\(button.titleLabel?.text ?? "")\"")
        }
    }
    

    @IBAction func showTapped(_ sender: UIButton) {
        customAlertView.show(animate: .popapFromBottom)
    }
    

}
