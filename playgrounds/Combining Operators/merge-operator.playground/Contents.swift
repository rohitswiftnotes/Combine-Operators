import Combine

let publisher1 = PassthroughSubject<Int, Never>()
let publisher2 = PassthroughSubject<Int, Never>()

let publishers = PassthroughSubject<PassthroughSubject<String, Never>, Never>()

publisher1.merge(with: publisher2).sink {
    print($0)
}

publisher1.send(4)
publisher1.send(5)

publisher2.send(6)
publisher2.send(7)
