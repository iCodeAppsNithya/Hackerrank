import Foundation

// Complete the libraryFine function below.
func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    if y1 == y2 {
        if m1 == m2{
            if d1 == d2 || d1 < d2{
                return 0
            }else {
               return 15 * (d1 - d2)
            }
        }else if m1 < m2{
            return 0
        }else {
             return 500 * (m1 - m2)
        }
        
    }else if y1 > y2{
        return 10000
    }else {
        return 0
    }
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let d1M1Y1Temp = readLine() else { fatalError("Bad input") }
let d1M1Y1 = d1M1Y1Temp.split(separator: " ").map{ String($0) }

guard let d1 = Int(d1M1Y1[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let m1 = Int(d1M1Y1[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let y1 = Int(d1M1Y1[2].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let d2M2Y2Temp = readLine() else { fatalError("Bad input") }
let d2M2Y2 = d2M2Y2Temp.split(separator: " ").map{ String($0) }

guard let d2 = Int(d2M2Y2[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let m2 = Int(d2M2Y2[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let y2 = Int(d2M2Y2[2].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

let result = libraryFine(d1: d1, m1: m1, y1: y1, d2: d2, m2: m2, y2: y2)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
