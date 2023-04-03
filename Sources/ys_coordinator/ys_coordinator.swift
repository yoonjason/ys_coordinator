import UIKit

public protocol Coordinator: AnyObject {
    func start()
    func coordinate(to coordinator: Coordinator)
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}

public func new(name: String, storyboard: String = "") -> UIViewController {
    let storybordName = !storyboard.isEmpty ? storyboard : name
    return UIStoryboard(name: "\(storybordName)", bundle: nil).instantiateViewController(withIdentifier: name)
}
