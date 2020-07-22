import Combine

let publisher1 = PassthroughSubject<Int, Never>()
let publisher2 = PassthroughSubject<String, Never>()

publisher1.combineLatest(publisher2)
    .sink {
        print("Publisher 1: \($0), Publisher 2: \($1)")
}

publisher1.send(1)
publisher2.send("A")
publisher2.send("B")
