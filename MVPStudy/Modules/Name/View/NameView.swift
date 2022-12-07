import UIKit

final class NameView: UIView {
    
    // MARK: - Public Properties
    
    weak var delegate: NameViewDelegate?
    
    // MARK: - Private Properties
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Seu nome"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var nameButton: UIButton = {
        let button = UIButton()
        button.setTitle("Colocar nome", for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didTapNameAction), for: .touchUpInside)
        
        return button
    }()
    
    // MARK: - Init
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions
    
    @objc
    private func didTapNameAction() {
        delegate?.insert()
    }
}

// MARK: - Extension

extension NameView: NameViewProtocol {
    func setupNameInformation(name: String) {
        nameLabel.text = name
    }
}

extension NameView: ViewCodable {
    func setupSubViews() {
        addSubview(nameLabel)
        addSubview(nameButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            nameButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
            nameButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            nameButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            nameButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupExtraConfiguration() {
        backgroundColor = .systemBackground
    }
}
