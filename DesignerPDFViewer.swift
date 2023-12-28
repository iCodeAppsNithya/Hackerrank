import Foundation

// Complete the designerPdfViewer function below.
func designerPdfViewer(h: [Int], word: String) -> Int {
    var dict : [Character : Int] = [:]
    let aScalars = "a".unicodeScalars
    let aCode = aScalars[aScalars.startIndex].value
    let letters: [Character] = (0..<26).map {
        i in Character(UnicodeScalar(aCode + i)!)
    }
    for number in 0..<26 {
        dict.updateValue(h[number], forKey: letters[number])
    }
    
    var charArr = word.filter({$0 == $0})
    var wordValues : [Int] = []
    for char in charArr{
        wordValues.append(dict[char]!)
    }
    
    return wordValues.max()! * wordValues.count

}
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let hTemp = readLine() else { fatalError("Bad input") }
let h: [Int] = hTemp.split(separator: " ").map {
    if let hItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return hItem
    } else { fatalError("Bad input") }
}

guard h.count == 26 else { fatalError("Bad input") }

guard let word = readLine() else { fatalError("Bad input") }

let result = designerPdfViewer(h: h, word: word)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
