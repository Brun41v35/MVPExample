import Foundation

final class NamePresenter: NamePresenterProtocol {
    
    // MARK: - Properties
    
    weak var delegate: NamePresenterDelegate?
    
    // MARK: - Functions
    
    func insertName() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.delegate?.setup(name: "Roxas")
        }
    }
}
