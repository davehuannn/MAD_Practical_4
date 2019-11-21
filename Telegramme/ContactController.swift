
import Foundation
import CoreData
import UIKit

// contact CURD
class ContactController {
    
    // add a new contact to core data
    func AddContact(newContact:Contact){
        let appDelegate = (UIApplication.shared.delegate) as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "CDContact", in: context)! // creating a new/row entity in the CDContact
        
        let contact = NSManagedObject(entity: entity, insertInto: context)
        contact.setValue(newContact.firstName, forKeyPath: "firstname")
        contact.setValue(newContact.lastName, forKeyPath: "lastname")
        contact.setValue(newContact.mobileNo, forKeyPath: "mobileno")
        
        do {
            try context.save()
        } catch let error as NSError {
            print("Could not save")
        }
    }
    
    // retrieving all contacts from core data
//    func retrieveAllContact()->[Contact]{
//        
//    }
    
    // update current contact with new contact
    // fetch data based on mobileno
    func updateContact(mobileno:String, newContact:Contact){
        
    }
    
    // delete contact
    // fetch data based on mobileno
    func deleteContact(mobileno:String){
        
    }
    
}
