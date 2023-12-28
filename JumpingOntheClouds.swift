import Foundation

// Complete the jumpingOnClouds function below.
func jumpingOnClouds(c: [Int]) -> Int {
    var jumpCount = 0
    var cloudInt = 0
    while cloudInt < c.count - 1{
        if c[cloudInt] == 0{
            if cloudInt + 2 < c.count && c[cloudInt + 2] == 0{
                jumpCount += 1
                cloudInt += 2
            }else{
                jumpCount += 1
                cloudInt += 1
            }
        }
    }
     return  jumpCount
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let cTemp = readLine() else { fatalError("Bad input") }
let c: [Int] = cTemp.split(separator: " ").map {
    if let cItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return cItem
    } else { fatalError("Bad input") }
}

guard c.count == n else { fatalError("Bad input") }

let result = jumpingOnClouds(c: c)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
