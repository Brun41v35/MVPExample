import UIKit

final class NameViewController: UIViewController {
    
    // MARK: - Typealias
    
    typealias NameViewProtocolView = NameViewProtocol & UIView
    
    // MARK: - Private Properties
    
    private var presenter: NamePresenterProtocol
    private var nameView: NameViewProtocolView
    
    // MARK: - Init
    
    init(presenter: NamePresenterProtocol,
         nameView: NameViewProtocolView) {
        self.presenter = presenter
        self.nameView = nameView
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func loadView() {
        view = nameView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Setup
    
    private func setup() {
        nameView.delegate = self
        presenter.delegate = self
    }
}

// MARK: - Extension

extension NameViewController: NameViewDelegate {
    func insert() {
        presenter.insertName()
    }
}

extension NameViewController: NamePresenterDelegate {
    func setup(name: String) {
        nameView.setupNameInformation(name: name)
    }
}
