import UIKit
import Foundation

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override var isHighlighted: Bool {
        didSet { if isHighlighted { isHighlighted = false } }
    }

    var tappedImage: UIImage?
    var tappedSmallImage: UIImage?
    var selectedImage: UIImage?
    var selectedSmallImage: UIImage?
    var normalImage: UIImage?
    var normalSmallImage: UIImage?

    func setImages(tappedImage: UIImage?,
                   tappedSmallImage: UIImage?,
                   selectedImage: UIImage?,
                   selectedSmallImage: UIImage?,
                   normalImage: UIImage?,
                   normalSmallImage: UIImage?) {
        self.tappedImage = tappedImage
        self.tappedSmallImage = tappedSmallImage
        self.selectedImage = selectedImage
        self.selectedSmallImage = selectedSmallImage
        self.normalImage = normalImage
        self.normalSmallImage = normalSmallImage
    }

    var buttonState = ButtonState.normal {
        didSet {
            switch buttonState {
            case .tapped:
                switch screenSize {
                case .normal:
                    self.setBackgroundImage(tappedImage, for: .normal)
                case .small:
                    self.setBackgroundImage(tappedSmallImage, for: .normal)
                }
            case .normal:
                switch screenSize {
                case .normal:
                    self.setBackgroundImage(normalImage, for: .normal)
                case .small:
                    self.setBackgroundImage(normalSmallImage, for: .normal)
                }
            case .selected:
                switch screenSize {
                case .normal:
                    self.setBackgroundImage(selectedImage, for: .normal)
                case .small:
                    self.setBackgroundImage(selectedSmallImage, for: .normal)
                }
            }
        }
    }

    enum ButtonState {
        case tapped
        case normal
        case selected
    }
}
