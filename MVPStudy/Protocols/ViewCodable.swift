protocol ViewCodable {
    func setup()
    func setupSubViews()
    func setupConstraints()
    func setupExtraConfiguration()
}

extension ViewCodable {
    func setup() {
        setupSubViews()
        setupConstraints()
        setupExtraConfiguration()
    }
    
    func setupExtraConfiguration() {}
}
