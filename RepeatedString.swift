import Foundation

// Complete the repeatedString function below.
func repeatedString(s: String, n: Int) -> Int {
    if s == "a"{
        return n
    }else{
        let strLen = s.count
        let noOfTimes = n/strLen
        let addStrCount = n % strLen
        var numberOfA = s.filter({$0 == "a"}).count * noOfTimes
        if addStrCount > 0 {
            var count = 0
            for char in s{
                if count < addStrCount{
                    if char == "a"{
                        numberOfA += 1
                    }
                    count += 1
                }
            }
        }
        
        return numberOfA
    }
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let result = repeatedString(s: s, n: n)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
