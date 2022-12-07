protocol NameViewDelegate: AnyObject {
    func insert()
}

protocol NameViewProtocol {
    func setupNameInformation(name: String)
    var delegate: NameViewDelegate? { get set }
}

protocol NamePresenterDelegate: AnyObject {
    func setup(name: String)
}

protocol NamePresenterProtocol {
    func insertName()
    var delegate: NamePresenterDelegate? { get set }
}
