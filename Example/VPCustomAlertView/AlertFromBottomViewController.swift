//
//  AlertFromBottomViewController.swift
//  VPCustomAlertView_Example
//
//  Created by pioner on 01.07.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import VPCustomAlertView

@available(iOS 11.0, *)
class AlertFromTopViewController: UIViewController {

    var customAlertView: VPCustomAlertView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        customAlertView = VPCustomAlertView(parentView: self.view, marginTop: 0, marginRight: 0, marginBottom: 200, marginLeft: 0)
        customAlertView.isAnchorTopToSafeArea = true
        customAlertView.isHideTapBlurBackground = false
        
        customAlertView.addTitle(title: "From Top Alert View")
        let viewContentAlert = UIView()
        viewContentAlert.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        customAlertView.addToContainerContent(viewContent: viewContentAlert)
        
        customAlertView.addAction(title: "Ok") { (button) in
            print("Tapped \"\(button.titleLabel?.text ?? "")\" and hide alert")
            self.customAlertView.hide()
        }
        customAlertView.addAction(title: "Cancel", titleColor: .red) { (button) in
            print("Tapped \"\(button.titleLabel?.text ?? "")\" and hide alert")
            self.customAlertView.hide()
        }
    }
    
    @IBAction func showTapped(_ sender: UIButton) {
        customAlertView.show(animate: .popapFromTop)
    }
    

}
