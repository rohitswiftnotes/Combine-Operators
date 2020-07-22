import Combine

let empty = Empty<String, Never>()

empty
    .replaceEmpty(with: "Combine Framework")
    .sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })
