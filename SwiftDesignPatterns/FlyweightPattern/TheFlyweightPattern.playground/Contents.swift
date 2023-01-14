import UIKit

class SpaceShip {
    private let mesh: [Float]
    private let texture: UIImage?
    private let position: (Float, Float, Float)
    
    init(mesh: [Float], imageName name: String, position:(Float, Float, Float) = (0,0,0)) {
        self.mesh = mesh
        self.texture = UIImage(named: name)
        self.position = position
    }
    
}

let fleetSizes = 1000
var ships = [SpaceShip]()
var vertices = [Float](repeating: 0, count: 1000)

for _ in 0..<fleetSizes {
    let ship = SpaceShip(mesh: vertices, imageName: "SpaceShip", position: (Float.random(in: 0...100), Float.random(in: 0...100), Float.random(in: 0...100)))
    ships.append(ship)
    
}
