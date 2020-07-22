import Combine

let numbers = (1...17).publisher

numbers.first(where: { $0 % 2 == 0 }).sink {
    print($0)
}
