import Combine

let isReady = PassthroughSubject<Void, Never>()
let taps = PassthroughSubject<Int, Never>()

taps.drop(untilOutputFrom: isReady).sink {
    print($0)
}

(1...12).forEach { n in
    taps.send(n)
    
    if n == 4 {
        isReady.send()
    }
}
