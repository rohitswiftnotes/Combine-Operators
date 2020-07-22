import Combine

let publisher = ["Vinoth", "Vino", "iOS", "Developer"].publisher

publisher.first().sink {
    print($0)
}

publisher.last().sink {
    print($0)
}
