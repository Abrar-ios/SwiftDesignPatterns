class NameClass {
    
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
}

extension NameClass: CustomStringConvertible {
    public var description : String {
        return "NameClass: FirstName:\"\(firstName)\" LastName:\"\(lastName)\""
    }
}

var usman = NameClass(firstName: "Usman", lastName: "Salman")
var jawad = usman
print(usman)
print(jawad)

jawad.firstName = "Jawad"
jawad.lastName = "Naeem"

print(usman)
print(jawad)
