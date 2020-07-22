import Combine

let values = ["abc", "42", "bcd", "3.45", "67"].publisher

values
    .compactMap { Int($0) }.sink {
        print($0)
}
