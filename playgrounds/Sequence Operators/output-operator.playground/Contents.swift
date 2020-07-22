import Combine

let publisher = ["Vinoth", "Vino", "iOS", "Developer"].publisher

publisher.output(at: 1).sink {
    print($0)
}

publisher.output(in: 0...2).sink {
    print($0)
}
