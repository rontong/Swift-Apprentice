import Foundation

// Swift Apprentice
// Chapter 8: Arrays

// Challenge 1
print("*** Challenge 1")
let array1 = [Int]()
let array3: [String] = []

let array4 = [1, 2, 3]
print(array4[0])
array4[1...2]

var array5 = [1, 2, 3]
array5[0] = array5[1]
array5[0...1] = [4, 5]
print("Items in array 5")
for item in array5 { print(item) }

// Challenge 2
print("*** Challenge 2")

func removingOnce(_ item: Int, from array: inout [Int]) -> [Int]{
    print("This is what's currently in the array:")
    for item in array {print(item)}
    
    if let indexToRemove = array.index(of: item){
    print("Remove the item \(item) at index Path \(indexToRemove)")
    
    array.remove(at: indexToRemove)
    print("Now the array contains:")
        for item in array {print(item)}
    }
    return array
}

removingOnce(3, from: &array5)

// Challenge 3
print("*** Challenge 3")

print("A bunch of 5's joined your array. Get rid of those pesky fives!")
array5 += [5, 5, 5, 5]
print("This is the current makeup of your array:")
for item in array5 {print(item)}

func removing(_ item: Int, from array: inout [Int]) -> [Int]{
    while array.contains(item) {
        print("There are still \(item)'s in the array! Proceed to search and destroy!")
        removingOnce(item, from: &array)
    }
    return array
}

removing(5, from: &array5)

// Challenge 4
print("*** Challenge 4")

var array6 = [1, 2, 3, 4, 5, 6]

func reversed(_ array: [Int]) -> [Int] {
    var array7 = array6
    var arrayIndex = array.count - 1
    var newArrayIndex = array.count
    var addedItemCount = 0

    for _ in array {
        array7.insert(array[arrayIndex - 1], at: newArrayIndex)
        arrayIndex -= 1
        newArrayIndex += 1
        addedItemCount += 1
        if arrayIndex <= 0 { break }
    }
    while addedItemCount > 0 {
        array7.removeFirst()
        addedItemCount -= 1
    }
        return array7
}

reversed(array6)

// Challenge 5
print("*** Challenge 5")

var newArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

func randomFromZero(to number: Int) -> Int{
    return Int(arc4random_uniform(UInt32(number)))
}

func randomized(_ array: inout [Int]) -> [Int] {
    
    var numberOfRandomizations = randomFromZero(to: 10)
    print("Going to Randomizer! We're gonna shuffle \(numberOfRandomizations) times!")
    
    repeat {
    var indexCount = array.count - 1
    var itemToShuffle = randomFromZero(to: indexCount)
    print("Shuffling item at index \(itemToShuffle)")
    
    array.insert(array[itemToShuffle], at: indexCount + 1)
    array.remove(at: itemToShuffle)
        numberOfRandomizations -= 1
        
    } while numberOfRandomizations > 0
    
    print("Randomization Complete! Array is now:")
    
    for item in array {
        print(item)
    }
    
    return array
}

randomized(&newArray)

// Challenge 6
print("*** Challenge 6")

var finalArray = [100, 5, 10, 15, 20]

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    
    finalArray.sort()
    for item in finalArray {
        print(item)
    }
    
    let min = finalArray.first!
    let max = finalArray.last!
    
    print("Minimum is \(min) and maximum is \(max)")
    
    return (min, max)
}

minMax(of: finalArray)

