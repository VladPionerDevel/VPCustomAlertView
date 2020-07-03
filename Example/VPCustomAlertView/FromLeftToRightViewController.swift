//
//  FromLeftToRightViewController.swift
//  VPCustomAlertView_Example
//
//  Created by pioner on 01.07.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import VPCustomAlertView

@available(iOS 11.0, *)
class FromLeftToRightViewController: UIViewController {

    var customAlertView: VPCustomAlertView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customAlertView = VPCustomAlertView(parentView: view)
        customAlertView.addTitle(title: "From left To right")
        customAlertView.addMessage(message: "My Super Message for Custom Alert View")
        customAlertView.backgroundBlurStyle = .light
        
        customAlertView.addAction(title: "To Right") { (button) in
            print("Tapped \"\(button.titleLabel?.text ?? "")\"")
            self.customAlertView.hide(animate: .popapFromRight)
        }
        customAlertView.addAction(title: "To Bottom") { (button) in
            print("Tapped \"\(button.titleLabel?.text ?? "")\"")
            self.customAlertView.hide(animate: .popapFromBottom)
        }
    }

    @IBAction func fromLeftTapped(_ sender: UIButton) {
        customAlertView.show(animate: .popapFromLeft)
    }
    
    @IBAction func fromTopTapped(_ sender: UIButton) {
        customAlertView.show(animate: .popapFromTop)
    }
    
}
