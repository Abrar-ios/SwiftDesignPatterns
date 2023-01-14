import UIKit

class SharedSpaceShipData {
    private let mesh: [Float]
    private let texture: UIImage?
    
    init(mesh: [Float], imageName name:String){
        self.mesh = mesh
        self.texture = UIImage(named: name)
    }
}

class SpaceShip {
    private let position: (Float, Float, Float)
    private let intrinsicState: SharedSpaceShipData
    
    init(sharedData: SharedSpaceShipData, position:(Float, Float, Float) = (0,0,0)) {
        self.intrinsicState = sharedData
        self.position = position
    }
    
}

let fleetSizes = 1000
var ships = [SpaceShip]()
var vertices = [Float](repeating: 0, count: 1000)
let sharedState = SharedSpaceShipData(mesh: vertices, imageName: "SpaceShip")
for _ in 0..<fleetSizes {
    let ship = SpaceShip(sharedData: sharedState, position: (Float.random(in: 0...100), Float.random(in: 0...100), Float.random(in: 0...100)))
    ships.append(ship)
    
}
