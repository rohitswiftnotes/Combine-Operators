import Combine

let publisher = [1, 2, 3, 4].publisher

publisher.reduce(0) { accumulator, value in
    print("Accumulator: \(accumulator) and the value is \(value)")
    return accumulator + value
}.sink {
    print($0)
}
