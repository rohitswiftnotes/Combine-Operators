import Combine

let numbers = (1...10).publisher

numbers.dropFirst(4).sink {
    print($0)
}
