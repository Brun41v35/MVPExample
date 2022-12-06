protocol NameViewDelegate: AnyObject {
    func insert()
}

protocol NameViewProtocol {
    func setupNameInformation(name: String)
    var delegate: NameViewDelegate? { get set }
}

protocol NamePresenterProtocol {
    func insertName() -> String
}
