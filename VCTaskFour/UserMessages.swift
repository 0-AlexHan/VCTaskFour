//
//  UserMessages.swift
//  VCTaskFour
//
//  Created by Alex Han on 12.07.2021.
//
import  UIKit


struct UserMessages {
    
    private struct SignOut {
        static let title = "Sign out?"
        static let message = "You can always access your content by signing back in"
        
    }
    
    private struct ActionSheet {
        static let title = "Title"
        static let message = "Please, Select an Option"
    }
    
    
    private struct AlertButtonTitles {
        static let approve = "Approve"
        static let edit = "Edit"
        static let defaultTitle = "Default"
        static let delete = "Delete"
        static let destructive = "Destructive"
        static let dismiss = "Dismiss"
        static let cancel = "Cancel"
        static let signOut = "Sign out"
        static let add = "Add Text"
    }
    private struct MoreThanTwoButtons {
        static let title = "Alert"
        static let message = "Alert with more than two buttons"
    }
    private struct  TextFieldAlert {
        static let title = "Alert with UItextField"
        static let placeholder = "Type text here"
    }

    
    func simpleAlert() -> UIAlertController {
        let alertViewController = UIAlertController(title: SignOut.title,
                                                    message: SignOut.message,
                                                    preferredStyle: .alert)
        
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.cancel, style: .default))
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.signOut, style: .default))
        
        return alertViewController
    }
    
    func simpleActionSheet() -> UIAlertController {
        let alertViewController = UIAlertController(title: ActionSheet.title,
                                                    message: ActionSheet.message,
                                                    preferredStyle: .actionSheet)
        
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.approve, style: .default))
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.edit, style: .default))
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.delete, style: .destructive))
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.dismiss, style: .cancel))
        
        return alertViewController
    }
    
    func alertWithDistractiveButton() -> UIAlertController {
        
        let alertViewController = UIAlertController(title: SignOut.title,
                                                    message: SignOut.message,
                                                    preferredStyle: .alert)
        
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.cancel, style: .default))
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.signOut, style: .destructive))
        
        return alertViewController
    }
    
    func alertWithMoreThanTwoButtons () -> UIAlertController {
        let alertViewController = UIAlertController(title: MoreThanTwoButtons.title,
                                                    message: MoreThanTwoButtons.message,
                                                    preferredStyle: .actionSheet)
        
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.defaultTitle, style: .default))
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.cancel, style: .default))
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.destructive, style: .destructive))
        
        return alertViewController
    }
    
    func alertWith(UITextField textField: UITextField) -> UIAlertController {
        let alertViewController = UIAlertController(title: TextFieldAlert.title,
                                                    message: nil,
                                                    preferredStyle: .alert)
       
        alertViewController.addTextField { UITextField in
            UITextField.placeholder = TextFieldAlert.placeholder
        }
        
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.add,
                                                    style: .default) { action in
            textField.text = alertViewController.textFields?.first?.text
        })
        
        alertViewController.addAction(UIAlertAction(title: AlertButtonTitles.cancel, style: .cancel))
        
        return alertViewController
    }
}
