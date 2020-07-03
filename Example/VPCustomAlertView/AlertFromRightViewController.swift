//
//  AlertFromRightViewController.swift
//  VPCustomAlertView_Example
//
//  Created by pioner on 01.07.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import VPCustomAlertView

@available(iOS 11.0, *)
class AlertFromRightViewController: UIViewController {

    var customAlertView: VPCustomAlertView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        customAlertView = VPCustomAlertView(parentView: self.view, marginTop: 0, marginRight: 0, marginBottom: 0, marginLeft: 50)
        customAlertView.isAnchorTopToSafeArea = true
        customAlertView.isAnchorBottomToSafeArea = true
        customAlertView.isHideTapBlurBackground = false
        
        customAlertView.addTitle(title: "Alert from right list")
        let tableView = UITableView()
        customAlertView.addToContainerContent(viewContent: tableView)
        
        customAlertView.addAction(title: "Ok") { (button) in
            print("Tapped \"\(button.titleLabel?.text ?? "")\" and hide alert")
            self.customAlertView.hide()
        }
        customAlertView.addAction(title: "Cancel", titleColor: .red) { (button) in
            print("Tapped \"\(button.titleLabel?.text ?? "")\" and hide alert")
            self.customAlertView.hide()
        }
    }
    

    @IBAction func showTapped(_ sender: Any) {
        customAlertView.show(animate: .popapFromRight)
        customAlertView.layer.cornerRadius = 0
    }
    

}
