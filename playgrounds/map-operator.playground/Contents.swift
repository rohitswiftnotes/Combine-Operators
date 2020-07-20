import Foundation
import Combine

let formatter = NumberFormatter()
formatter.numberStyle = .spellOut

[223, 44, 23].publisher.map {
    formatter.string(from: NSNumber(integerLiteral: $0)) ?? ""
}.sink {
    print($0)
}
