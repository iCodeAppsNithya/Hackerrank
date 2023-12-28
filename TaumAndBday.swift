import Foundation

/*
 * Complete the 'taumBday' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER b
 *  2. INTEGER w
 *  3. INTEGER bc
 *  4. INTEGER wc
 *  5. INTEGER z
 */

func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    
    return min(b * bc + w * wc, (b+w)*wc + b*z, (b+w)*bc + w*z)
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
    let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

    guard let b = Int(firstMultipleInput[0])
    else { fatalError("Bad input") }

    guard let w = Int(firstMultipleInput[1])
    else { fatalError("Bad input") }

    guard let secondMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
    let secondMultipleInput = secondMultipleInputTemp.split(separator: " ").map{ String($0) }

    guard let bc = Int(secondMultipleInput[0])
    else { fatalError("Bad input") }

    guard let wc = Int(secondMultipleInput[1])
    else { fatalError("Bad input") }

    guard let z = Int(secondMultipleInput[2])
    else { fatalError("Bad input") }

    let result = taumBday(b: b, w: w, bc: bc, wc: wc, z: z)

    fileHandle.write(String(result).data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}
