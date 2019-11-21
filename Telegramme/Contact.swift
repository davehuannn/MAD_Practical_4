
class Contact {
    
    var firstName:String
    var lastName:String
    var mobileNo:String
    
    init() {
        self.firstName = ""
        self.lastName = ""
        self.mobileNo = ""
    }
    
    init(firstname:String, lastname:String, mobileno:String) {
        firstName = firstname
        lastName = lastname
        mobileNo = mobileno
    }
    
}
