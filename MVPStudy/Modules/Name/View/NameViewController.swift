import UIKit

final class NameViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private let presenter: NamePresenterProtocol
    private var nameView: NameViewProtocol & UIView
    
    // MARK: - Init
    
    init(presenter: NamePresenterProtocol,
         nameView: NameViewProtocol & UIView) {
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
    }
}

// MARK: - Extension

extension NameViewController: NameViewDelegate {
    func insert() {
        nameView.setupNameInformation(name: presenter.insertName())
    }
}
