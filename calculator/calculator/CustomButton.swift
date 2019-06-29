import UIKit
import Foundation

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setup()
    }

    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        setup()
    }

    func setup() {
        self.layer.cornerRadius = 0.5 * self.bounds.size.height
        self.clipsToBounds = true
    }
    
    override var isHighlighted: Bool {
        didSet { if isHighlighted { isHighlighted = false } }
    }

}
