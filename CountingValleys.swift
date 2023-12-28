import Foundation

// Complete the countingValleys function below.
func countingValleys(n: Int, s: String) -> Int {
    var valleyCount = 0
    var level = 0
    for char in s {
        if(char == "U") {level += 1}
        if(char == "D") {level -= 1}
        
        if(level == 0 && char == "U"){
            valleyCount += 1
        }
    }
    return valleyCount
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let s = readLine() else { fatalError("Bad input") }

let result = countingValleys(n: n, s: s)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
