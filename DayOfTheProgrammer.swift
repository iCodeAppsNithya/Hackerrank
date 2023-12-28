import Foundation

// Complete the dayOfProgrammer function below.
func dayOfProgrammer(year: Int) -> String {
  var isLeapYear = year%4 == 0
   
    if year == 1918{
        return "26.09.1918"
    }else if ((year <= 1917) && isLeapYear) || ((year > 1918) && ((year%400 == 0) || 
    (isLeapYear && (year%100 != 0)))) {
        return "12.09.\(year)"
    }else{
        return "13.09.\(year)"
    }

}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let year = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let result = dayOfProgrammer(year: year)

fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
