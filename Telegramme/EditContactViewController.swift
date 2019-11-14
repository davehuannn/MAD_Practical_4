
import Foundation

import UIKit

class EditContactViewController : UIViewController {
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var firstNameFld: UITextField!
    @IBOutlet weak var lastNameFld: UITextField!
    @IBOutlet weak var mobileNo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveBtn(_ sender: Any) {
        
        var index = appDelegate.index
        let contact = appDelegate.contactList[index!]
        
        contact.firstName = firstNameFld.text!
        contact.lastName = lastNameFld.text!
        contact.mobileNo = mobileNo.text!
    }
}

