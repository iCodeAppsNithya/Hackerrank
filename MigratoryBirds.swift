import Foundation

// Complete the migratoryBirds function below.
func migratoryBirds(arr: [Int]) -> Int {
    
    let birdTypeArr = [1,2,3,4,5]
    var countArr : [Int] = []
    
    for item in birdTypeArr {
        countArr.append(arr.filter({$0 == item}).count)
    }
    
    return birdTypeArr[countArr.firstIndex(of: countArr.max()!)!]
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let arrCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == arrCount else { fatalError("Bad input") }

let result = migratoryBirds(arr: arr)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
