import Foundation

class NameClass: NSCopying {
    
    func copy(with zone: NSZone? = nil) -> Any {
        return NameClass(firstName: self.firstName, lastName: self.lastName)
    }
    
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func clone() -> NameClass {
        return self.copy() as! NameClass
    }
    
}

extension NameClass: CustomStringConvertible {
    public var description : String {
        return "NameClass: FirstName:\"\(firstName)\" LastName:\"\(lastName)\""
    }
}

var usman = NameClass(firstName: "Usman", lastName: "Salman")
var jawad = usman.clone()
print(usman)
print(jawad)

jawad.firstName = "Jawad"
jawad.lastName = "Naeem"

print(usman)
print(jawad)
