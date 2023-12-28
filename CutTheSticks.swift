import Foundation

// Complete the cutTheSticks function below.
func cutTheSticks(arr: [Int]) -> [Int] {
    var changingArr = arr
    var countsArr : [Int] = []
    while changingArr.count > 0 {
        countsArr.append(changingArr.count)
        let smallestElement = changingArr.min() ?? 0
        changingArr = changingArr.filter({($0 - smallestElement) != 0})
        
    }
    return countsArr
}
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

let result = cutTheSticks(arr: arr)

fileHandle.write(result.map{ String($0) }.joined(separator: "\n").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
