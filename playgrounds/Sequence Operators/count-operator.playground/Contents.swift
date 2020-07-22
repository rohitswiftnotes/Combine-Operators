import Combine

let publisher1 = ["Vinoth", "Vino", "iOS", "Developer"].publisher

let publisher2 = PassthroughSubject<Int, Never>()

publisher1.count().sink {
    print($0)
}

publisher2.count().sink {
    print($0)
}

publisher2.send(4)
publisher2.send(4)
publisher2.send(4)
publisher2.send(completion: .finished)
