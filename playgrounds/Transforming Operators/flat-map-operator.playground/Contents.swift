import Combine

struct Company {
    let name: String
    let noOfEmployees: CurrentValueSubject<Int, Never>
    
    init(name: String, noOfEmployees: Int) {
        self.name = name
        self.noOfEmployees = CurrentValueSubject(noOfEmployees)
    }
}

let allBranch = Company(name: "Zoho Corporation Private Limited", noOfEmployees: 9100)

let company = CurrentValueSubject<Company, Never>(allBranch)

company.flatMap {
    $0.noOfEmployees
}.sink {
    print($0)
}

let chennaiBranch = Company(name: "Zoho Corporation Private Limited", noOfEmployees: 4000)

company.value = chennaiBranch

allBranch.noOfEmployees.value += 10

// Adding 42 employees to chennai branch
chennaiBranch.noOfEmployees.value += 42
