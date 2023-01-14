protocol Serializable {
    func serialize()
}

class JSONSerialIzer : Serializable {
    func serialize() {
        print("JSONSerialIzer:\(#function)")
    }
}

class PlistSerialIzer : Serializable {
    func serialize() {
        print("PlistSerialIzer:\(#function)")
    }
}

class XMLSerialIzer : Serializable {
    func serialize() {
        print("XMLSerialIzer:\(#function)")
    }
}

enum Serializers {
    case json
    case plist
    case xml
}

func makeSerializer(_ type: Serializers) -> Serializable? {
    var result : Serializable?
    switch type {
    case .json: result = JSONSerialIzer()
    case .plist: result = PlistSerialIzer()
    case .xml: result = XMLSerialIzer()
    }
    return result
}

let jsonSerializer = makeSerializer(.json)
jsonSerializer?.serialize()

let plistSerializer = makeSerializer(.plist)
plistSerializer?.serialize()

