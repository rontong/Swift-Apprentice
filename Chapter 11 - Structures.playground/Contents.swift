import Foundation

// Swift Apprentice
// Chapter 11: Structures

// Challenge 1

struct BoardPiece {
    let type: String
    let x: Int
    let y: Int
}

let moveOne = BoardPiece(type: "X", x: 0, y:0)
let moveTwo = BoardPiece(type: "O", x: 1, y: 0)

// Challenge 2
struct Tshirt {
    let size: Int
    let color: String
    let materials: String
    
    func cost() -> Int {
        var colorCost = 0
        var sizeCost = 0
        var materialsCost = 0
        
        if size > 0 && size < 5{
            sizeCost = 1
        } else if size > 5 && size < 10 {
            sizeCost = 2
        } else if size > 10 {
            sizeCost = 3
        }
        
        if color == "Red" {
            colorCost = 1
        } else if color == "Blue" {
            colorCost = 2
        } else {
            colorCost = 3
        }
        
        if materials == "Cotton" {
            materialsCost = 1
        } else if materials == "Wool" {
            materialsCost = 2
        } else {
            materialsCost = 3
        }
        
        let finalCost = colorCost + sizeCost + materialsCost
        return finalCost
    }
}

let smallRedCottonTshirt = Tshirt(size: 2, color: "Red", materials: "Cotton")
smallRedCottonTshirt.cost()

let largeGreenWoolTshirt = Tshirt(size: 11, color: "Green", materials: "Wool")
largeGreenWoolTshirt.cost()



