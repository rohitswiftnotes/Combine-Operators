import Combine

["macOS", "iOS", "iPadOS", "watchOS", "tvOS"].publisher.collect().sink {
    print($0)
}

["macOS", "iOS", "iPadOS", "watchOS", "tvOS"].publisher.collect(3).sink {
    print($0)
}
