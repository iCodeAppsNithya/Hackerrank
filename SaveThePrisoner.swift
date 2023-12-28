import Foundation

// Complete the saveThePrisoner function below.
func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
  var b = (m % n + s - 1)
   return b % n == 0 ? n : b % n
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let nmsTemp = readLine() else { fatalError("Bad input") }
    let nms = nmsTemp.split(separator: " ").map{ String($0) }

    guard let n = Int(nms[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

    guard let m = Int(nms[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

    guard let s = Int(nms[2].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

    let result = saveThePrisoner(n: n, m: m, s: s)

    fileHandle.write(String(result).data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}
