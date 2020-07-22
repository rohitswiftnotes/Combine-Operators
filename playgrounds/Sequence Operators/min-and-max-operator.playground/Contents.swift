import Combine

let publisher = [2, -56, -32, 6, 55, 402].publisher

publisher
.min()
    .sink {
        print($0)
}

publisher
.max()
    .sink {
        print($0)
}
