import Combine

let numbers = (1...10).publisher

numbers.prefix(3).sink {
    print($0)
}

numbers.prefix(while: { $0 < 6}).sink {
    print($0)
}
