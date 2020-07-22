import Combine

let numbers1 = (1...4).publisher
let numbers2 = (200...206).publisher

numbers1.prepend(105, 106).prepend(-1, -2).prepend(numbers2)
    .sink {
        print($0)
}
