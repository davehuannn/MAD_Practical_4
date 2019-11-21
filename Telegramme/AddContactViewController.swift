//
//  AddContactViewController.swift
//  Telegramme
//
//  Created by MAD2_P03 on 7/11/19.
//  Copyright © 2019 Dave Huan. All rights reserved.
//

import Foundation

import UIKit

class AddContactViewController : UIViewController {

    
    @IBOutlet weak var firstNameFld: UITextField!
    @IBOutlet weak var lastNameFld: UITextField!
    @IBOutlet weak var mobileFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func CancelBtn(_ sender: Any) {
        firstNameFld.text = ""
        lastNameFld.text = ""
        mobileFld.text = ""
    }
    
    @IBAction func createBtn(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        print(String(appDelegate.contactList.count))
        
        let newContact = Contact(firstname: firstNameFld.text!, lastname: lastNameFld.text!, mobileno: mobileFld.text!)
        
        appDelegate.contactList.append(Contact(firstname: firstNameFld.text!, lastname: lastNameFld.text!, mobileno: mobileFld.text!))
        print(appDelegate.contactList.last!.firstName)
        
        let controller = ContactController()
        //var controller:ContactController = ContactController()
        controller.AddContact(newContact: newContact)

        firstNameFld.text = ""
        lastNameFld.text = ""
        mobileFld.text = ""
    }
}
