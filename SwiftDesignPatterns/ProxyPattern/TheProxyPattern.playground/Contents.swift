import Foundation

class RandomIntWithId {
    var value: Int = {
        print("value initialized")
        return Int.random(in: Int.min...Int.max)
    }()
    
    lazy var uid: String = {
        print("uid initialized")
        return UUID().uuidString
    }()
}
