import Foundation

// Complete the beautifulDays function below.
func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var beautifulDayCount = 0
    for day in i...j{
        var charArr = "\(day)".reversed()
        var str = ""
        for char in charArr{
            str.append(char)
        }
        if abs(day - Int(str)!) % k == 0{
            beautifulDayCount += 1
        }
    }
    return beautifulDayCount

}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let ijkTemp = readLine() else { fatalError("Bad input") }
let ijk = ijkTemp.split(separator: " ").map{ String($0) }

guard let i = Int(ijk[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let j = Int(ijk[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let k = Int(ijk[2].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

let result = beautifulDays(i: i, j: j, k: k)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
