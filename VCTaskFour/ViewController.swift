//
//  ViewController.swift
//  VCTaskFour
//
//  Created by Alex Han on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
        
       
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
      
        
        @IBAction func simpleAlertButton(_ sender: Any) {
            let alertViewController = UIAlertController(title: "Sign out?",
                                                        message: "You can always access your content by signing back in",
                                                        preferredStyle: UIAlertController.Style.alert)
            
            alertViewController.addAction(UIAlertAction(title: "Cancel", style: .default))
            alertViewController.addAction(UIAlertAction(title: "Sign out", style: .default))
            
            self.present(alertViewController, animated: true)
        }
        
        @IBAction func simpleActionSheetButton(_ sender: Any) {
            let alertViewController = UIAlertController(title: "Title",
                                                        message: "Please Select an Option",
                                                        preferredStyle: UIAlertController.Style.actionSheet)
            
            alertViewController.addAction(UIAlertAction(title: "Approve", style: .default))
            alertViewController.addAction(UIAlertAction(title: "Edit", style: .default))
            alertViewController.addAction(UIAlertAction(title: "Delete", style: .destructive))
            alertViewController.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            
            self.present(alertViewController, animated: true)
        }
        
        @IBAction func alertWithDistractiveButton(_ sender: Any) {
            let alertViewController = UIAlertController(title: "Sign out?",
                                                        message: "You can always access your content by signing back in",
                                                        preferredStyle: .alert)
            
            alertViewController.addAction(UIAlertAction(title: "Cancel", style: .default))
            alertViewController.addAction(UIAlertAction(title: "Sign out", style: .destructive))
            
            self.present(alertViewController, animated: true)
        }
        
        @IBAction func alertWithMoreThanTwoButtons(_ sender: Any) {
            let alertViewController = UIAlertController(title: "Alert",
                                                        message: "Alert with more than 2 buttons",
                                                        preferredStyle: UIAlertController.Style.actionSheet)
            
            alertViewController.addAction(UIAlertAction(title: "Default", style: .default))
            alertViewController.addAction(UIAlertAction(title: "Cancel", style: .default))
            alertViewController.addAction(UIAlertAction(title: "Destructive", style: .destructive))
            
            self.present(alertViewController, animated: true)
        }
        
        @IBAction func alertWithUITextFieldButton(_ sender: Any) {
            let alertViewController = UIAlertController(title: "Alert with UItextField",
                                                        message: nil,
                                                        preferredStyle: .alert)
           
            alertViewController.addTextField { UITextField in
                UITextField.placeholder = "Type text here"
            }
            
            alertViewController.addAction(UIAlertAction(title: "Add Text",
                                                        style: .default) { action in
                self.textField.text = alertViewController.textFields?.first?.text
            })
            
            alertViewController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            
            self.present(alertViewController, animated: true)
        }
}

