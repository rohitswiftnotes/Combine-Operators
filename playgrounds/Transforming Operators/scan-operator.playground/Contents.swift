import Combine

let range = (1...8).publisher

range.scan(0) { $0 + $1 }.sink { print("\($0)", terminator: " ") }
