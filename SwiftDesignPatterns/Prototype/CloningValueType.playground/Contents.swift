struct nameSruct {
    var firstName: String
    var lastName: String
}

var haider = nameSruct(firstName: "Haider Ali", lastName: "Rizvi")
var faheem = haider

print("Haider:\(haider)")
print("Faheem:\(faheem)")

faheem.firstName = "Faheem"
faheem.lastName = "Imran"

print("Haider:\(haider)")
print("Faheem:\(faheem)")
