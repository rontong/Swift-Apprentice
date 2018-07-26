import Foundation

// Swift Apprentice
// Chapter 9: Dictionaries

// Challenge 1
let dict3: [Int: Int] = [:]
let dict4 = ["One": 1, "Two": 2, "Three": 3]
dict4["One"]

var dict5 = ["NY": "New York", "CA": "California"]
dict5["NY"]
dict5["WA"] = "Washington"
dict5["CA"] = nil

// Challenge 2

var dictionary = ["firstItem": 1, "secondItem": 2]

func swappingValuesForKeys(_ key1: String, _ key2: String, in dictionary: inout[String: Int]) -> [String: Int] {
    
    dictionary["newSecondItem"] = dictionary["firstItem"]
    dictionary["firstItem"] = dictionary["secondItem"]
    dictionary["secondItem"] = dictionary["newSecondItem"]
    dictionary["newSecondItem"] = nil
    
    return dictionary
}

swappingValuesForKeys("firstItem", "secondItem", in: &dictionary)

// Challenge 3
print("*** Challenge 3")

var placesDictionary = ["NY": "New York", "CA": "California"]

func printLongStates(in dictionary: [String: String]){
    for stateName in placesDictionary.values {
        if stateName.count > 8 {
            print(stateName)
        }
    }
}

printLongStates(in: placesDictionary)

// Challenge 4
print("*** Challenge 4")

var merge1 = ["HS": "Hayden Shapes", "CH": "Chilli Surfboards", "DHD": "Darren Hadley Designs"]
var merge2 = ["FW": "Firewire", "SD": "Slater Designs"]

func merging(_ dict1: [String: String], with dict2: inout[String: String]) -> [String: String] {
    
    for (brand, name) in dict1 {
        dict2["\(brand)"] = "\(name)"
    }
    print(merge2)
    return merge2
}

merging(merge1, with: &merge2)

// Challenge 5
print("*** Challenge 5")

var charactersDict : [Character: Int] = ["a": 0]
var text = "abracadabra"

var characterArray = Array(text)
print("The text contains the characters  \(characterArray). Placing this into an array...")

func occurrencesOfCharacters(in text: String) -> [Character: Int]{
    
    // Identify characters by placing the text in an array. Then if the dictionary contains no characters, and add them with a count of 1. If the dictionary already contains the character, then add 1 to the value for that character.

    for character in characterArray{
        
        if characterArray.contains(character) && !charactersDict.keys.contains(character) {
            charactersDict[Character("\(character)")] = 1
            print("\(character) is a new character! Adding it to the dictionary")
        } else {
            charactersDict[Character("\(character)")]  = charactersDict[character]! + 1
            print("Character \(character) already exists in the dictionary. Increasing count by 1")
        }
        print(charactersDict)
        
    }
    return charactersDict
}

occurrencesOfCharacters(in: text)

// Challenge 6
print("*** Challenge 6")

var invertThisDictionary = ["Coffee Grinder": 1, "Coffee Machine": 1, "Toaster": 2, "Fry pan": 3]
var trueOrFalse : Bool = false

func isInvertible(_ invertingDictionary: [String: Int]) -> Bool {
    
    var valueArray = [Int]()
    
    for key in invertingDictionary.keys {
        print("Searching for item with key \(key)")

        if let invertingDictionaryValue = invertingDictionary["\(key)"]{
        
        if valueArray.contains(invertingDictionaryValue){
        print("Value Array contains \(invertingDictionaryValue) already. Dictionary terms are not all unique.")
            trueOrFalse = false
            break
        }
        else {
            valueArray.append(invertingDictionaryValue)
            print("Value Array does not contain \(invertingDictionaryValue). Adding value to dictionary")
            print("Value Array now contains:")
            print(valueArray)
            trueOrFalse = true }
        }
        else {
            print("This dictionary is empty!")
        }
    }
    return trueOrFalse
}

isInvertible(invertThisDictionary)

// Challenge 7
print("*** Challenge 7")

var invertMe = ["Cat": 1, "Dog": 2, "Rabbit": 3, "Guinea Pig": 4]

func invert(_ input: [String: Int]) -> [Int: String] {
    precondition(isInvertible(input), "this dictionary can't be inverted")
    
    var invertedDictionary = [Int: String]()
    
    for key in input.keys{
        if let value = input["\(key)"] {
            invertedDictionary[value] = "\(key)"
            print(invertedDictionary)
        }
    }
    return invertedDictionary
}

invert(invertMe)

// Challenge 8
print("*** Challenge 8")

var sortingDictionary: [String: Int16] = ["Beta": 1, "Alpha": 2, "Gamma": 3, "Charlie": 4]

func printSortedKeysAndValues(_ input: [String: Int16]){
    var sortingArray = Array(sortingDictionary.keys)
    sortingArray.sort()
    print("Let sort the keys alphabetically. Sorting Array contains the keys \(sortingArray)")
    
    for key in sortingArray{
        if let value = sortingDictionary["\(key)"]{
            print("The key is \(key) has value \(value)")
        }
    }
}

printSortedKeysAndValues(sortingDictionary)

// Challenge 9
print("*** Challenge 9")

var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]

nameTitleLookup["Patrick"] = nil
