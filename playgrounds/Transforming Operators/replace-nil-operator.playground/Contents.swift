import Combine

["Vinoth", "Rashiee", nil, "Wenoth", "Rashika"].publisher
    .replaceNil(with: "Not Found")
    .map { $0! }
    .sink {
        print($0)
}
