//
//  ViewController.swift
//  VCTaskFour
//
//  Created by Alex Han on 11.07.2021.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet private weak var textField: UITextField!
    private let alerts = UserMessages()
        
       
        override func viewDidLoad() {
            super.viewDidLoad()
        }
      
        
        @IBAction func simpleAlertButton(_ sender: Any) {
            self.present(alerts.simpleAlert(), animated: true)
        }
        
        @IBAction func simpleActionSheetButton(_ sender: Any) {
            self.present(alerts.simpleActionSheet(), animated: true)
        }
        
        @IBAction func alertWithDistractiveButton(_ sender: Any) {
            self.present(alerts.alertWithDistractiveButton(), animated: true)
        }
        
        @IBAction func alertWithMoreThanTwoButtons(_ sender: Any) { self.present(alerts.alertWithMoreThanTwoButtons(), animated: true)
        }
        
        @IBAction func alertWithUITextFieldButton(_ sender: Any) {
            self.present(alerts.alertWith(UITextField: textField), animated: true)
        }
}


