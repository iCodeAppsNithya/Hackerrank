import Foundation

// Complete the findDigits function below.
func findDigits(n: Int) -> Int {
    var num = "\(n)"
    var array = num.utf8.map{Int(($0 as UInt8)) - 48}
    var checked : [Int] = []
    var numberDivCount = 0
    for num in array{
        if !(checked.contains(num)){
            if num != 0{
                if n % num == 0 {
                    numberDivCount+=1
                    checked.append(num)
                }
            }  
        }else{
            numberDivCount+=1
        }
        
    }
    return numberDivCount
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    let result = findDigits(n: n)

    fileHandle.write(String(result).data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}

