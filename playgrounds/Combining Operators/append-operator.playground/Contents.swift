import Combine

let numbers1 = (1...4).publisher
let numbers2 = (200...206).publisher

numbers1.append(105, 106).append(-1, -2).append(numbers2)
    .sink {
        print($0)
}
