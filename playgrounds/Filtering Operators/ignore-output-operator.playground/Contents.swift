import Combine

let numbers = (1...2000).publisher

numbers
    .ignoreOutput()
    .sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })
