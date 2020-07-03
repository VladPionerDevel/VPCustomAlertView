//
//  SimpleAlertViewController.swift
//  VPCustomAlertView_Example
//
//  Created by pioner on 01.07.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import VPCustomAlertView

@available(iOS 11.0, *)
class SimpleAlertViewController: UIViewController {

    var customAlertView: VPCustomAlertView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customAlertView = VPCustomAlertView(parentView: view)
        customAlertView.addTitle(title: "Simple Alert View")
        customAlertView.addMessage(message: "My Super Message for Custom Alert View")
        customAlertView.backgroundBlurStyle = .none
    }
    

    @IBAction func ShowTaped(_ sender: UIButton) {
        customAlertView.show()
    }
    
    @IBAction func HideTspped(_ sender: Any) {
        customAlertView.hide()
    }
    
}
