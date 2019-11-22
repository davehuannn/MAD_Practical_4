import Foundation
import CoreData
import UIKit

class ShowContactViewController :  UITableViewController {
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDelegate.contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var firstName: String
        var lastName: String
        var mobileNo: String
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        var contactExisting:[NSManagedObject] = []
        
        let context = appDelegate.persistentContainer.viewContext
        let fetchContacts = NSFetchRequest<NSManagedObject>(entityName: "CDContact")
        do {
            contactExisting = try! context.fetch(fetchContacts)
            
            for contact in contactExisting {
                firstName = contact.value(forKeyPath: "firstname") as! String
                lastName = contact.value(forKeyPath: "lastname") as! String
                mobileNo = contact.value(forKeyPath: "mobileno") as! String
                
                cell.textLabel!.text = "\(firstName) \(lastName)"
                cell.detailTextLabel!.text = "\(mobileNo)"
            }
        } catch let error as NSError {
            print("Could not fetch")
        }
        
        return cell
        
//        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
//
//        let contact = appDelegate.contactList[indexPath.row]
//        cell.textLabel!.text = "\(contact.firstName) \(contact.lastName)"
//        cell.detailTextLabel!.text = "\(contact.mobileNo)"
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            appDelegate.contactList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        appDelegate.index = indexPath.row
    }
    
}
