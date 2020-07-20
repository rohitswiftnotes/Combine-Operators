import Combine

struct User {
    let name: String
    let age: Int
}

let publisher = PassthroughSubject<User, Never>()

publisher.map(\.name, \.age).sink { (name, age) in
    print("User: Name = \(name) and Age = \(age)")
}

publisher.send(User(name: "Vinoth", age: 24))
