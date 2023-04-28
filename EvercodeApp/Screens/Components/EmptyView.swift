import UIKit

class EmptyView: UIView {
    
    private lazy var emptyLabel: UILabel = {

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "No data found"
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .black
        label.backgroundColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    init() {

        super.init(frame: .zero)

        self.setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /*
     
     Nossa EmptyView deve ter um componente UILabel centralizado na tela. Fique atento às configurações que o UILabel deve ter:
     - O atributo text deve ser configurado com o texto "No data found"
     - O atributo font deve ser configurado com o valor UIFont.systemFont(ofSize: 22, weight: .semibold)
     - O atributo textAlignment deve ser configurado com o valor .center
     - Defina o atributo backgroundColor da EmptyView como .white
     
     
     */
}

private extension EmptyView {
    func setupViews() {

        self.configureSubviews()
        self.configureSubviewsConstraints()
    }

    func configureSubviews() {
        
        addSubview(emptyLabel)
    }

    func configureSubviewsConstraints() {

        NSLayoutConstraint.activate([

            emptyLabel.topAnchor.constraint(equalTo: topAnchor),
            emptyLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            emptyLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            emptyLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
