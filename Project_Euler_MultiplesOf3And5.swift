import Foundation
//Project Euler #1: Multiples of 3 and 5
guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }
    
     // Function to calculate the sum of multiples
    func sumOfMultiples(_ multiple: Int) -> Int {
        let number = (n - 1) / multiple
        return multiple * number * (number + 1) / 2
    }
    let sumOf3 = sumOfMultiples(3)
    let sumOf5 = sumOfMultiples(5)
    let sumOf15 = sumOfMultiples(15)

    print(sumOf3 + sumOf5 - sumOf15)
}
