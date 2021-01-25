import UIKit
// MARK: - 1 problem

let givenArray = [[45, 12], [10, 19], [191, 3], [41, 81]]

func sortWholeArray(arr: [[Int]], sortInnerArray: ([[Int]]) -> [[Int]]) -> [[Int]]
{
    let sortedInnerArray = sortInnerArray(arr)
    
    return sortedInnerArray.sorted { (x, y) -> Bool in
        x[0] > y[0]
    }
}

let sortedArray = sortWholeArray(arr: givenArray) { (x) -> [[Int]] in
    return x.map { (item) -> [Int] in
        item.sorted()
    }
}
print(givenArray)
print(sortedArray)
print("\n")
// MARK: - 2 problem

let givenString = "Hello world"
func getLettersCount(given: String) -> [Character : Int] {

    return given.reduce(into: [:]) { (counts, letter) in
        if (letter.isLetter) {
            counts[letter, default: 0] += 1
        }
    }
}
print(givenString)
let outputString = getLettersCount(given: givenString)
print(outputString)
print("\n")

// MARK: - 3 problem

let givenStringTwo = "Hello world! Today is a great day for coding!"

func getFilteredWords(given: String) -> [String] {
    let separatedString = givenStringTwo.components(separatedBy: " ")
    let filteredString = separatedString.filter { (x) -> Bool in
        guard let firstLetter = x.first else {
            return false
        }
        return firstLetter.isUppercase
    }
    return filteredString
}
print(givenStringTwo)
let outputStringTwo = getFilteredWords(given: givenStringTwo)
print(outputStringTwo)

