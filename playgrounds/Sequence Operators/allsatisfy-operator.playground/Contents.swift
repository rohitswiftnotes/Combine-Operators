import Combine

let publisher = ["Vinoth", "Vino", "ioS", "Developer"].publisher

publisher.allSatisfy { $0.contains("o") }.sink {
    print($0)
}
