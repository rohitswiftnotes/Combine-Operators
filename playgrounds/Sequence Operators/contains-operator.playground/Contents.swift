import Combine

let publisher = ["Vinoth", "Vino", "iOS", "Developer"].publisher

publisher.contains("Vino").sink {
    print($0)
}
