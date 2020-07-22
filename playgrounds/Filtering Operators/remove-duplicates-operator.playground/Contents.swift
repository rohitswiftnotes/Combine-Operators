import Foundation
import Combine

let os = "iOS iOS iOS macOS iOS iOS iPadOS watchOS iOS"
    .components(separatedBy: " ").publisher

os
.removeDuplicates()
    .sink {
        print($0)
}
