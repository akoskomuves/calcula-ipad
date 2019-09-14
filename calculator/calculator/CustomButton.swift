import UIKit
import Foundation
import SnapKit

class CustomButton: UIButton {

    override var isHighlighted: Bool {
        didSet { if isHighlighted { isHighlighted = false } }
    }

    let tappedImage: UIImage
    let tappedSmallImage: UIImage
    let selectedImage: UIImage?
    let selectedSmallImage: UIImage?
    let normalImage: UIImage
    let normalSmallImage: UIImage
    let type: CalculatorButtonType

    init(tappedImage: UIImage,
                   tappedSmallImage: UIImage,
                   selectedImage: UIImage?,
                   selectedSmallImage: UIImage?,
                   normalImage: UIImage,
                   normalSmallImage: UIImage,
                   type: CalculatorButtonType) {
        self.tappedImage = tappedImage
        self.tappedSmallImage = tappedSmallImage
        self.selectedImage = selectedImage
        self.selectedSmallImage = selectedSmallImage
        self.normalImage = normalImage
        self.normalSmallImage = normalSmallImage
        self.type = type
        super.init(frame: .null)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var buttonState = ButtonState.normal {
        didSet {
            switch buttonState {
            case .tapped:
                self.layer.removeAllAnimations()
                switch screenSize {
                case .normal:
                    self.setBackgroundImage(tappedImage, for: .normal)
                case .small:
                    self.setBackgroundImage(tappedSmallImage, for: .normal)
                }
            case .normal:
                let tmpImage: UIImageView
                switch screenSize {
                case .normal:
                    tmpImage = UIImageView(image: self.normalImage)
                case .small:
                    tmpImage = UIImageView(image: self.normalSmallImage)
                }
                
                UIView.animate(withDuration: 0.5, delay: 0.0, options: .allowUserInteraction, animations: {
                    self.superview?.addSubview(tmpImage)
                    self.superview?.sendSubviewToBack(tmpImage)
                    tmpImage.snp.makeConstraints { make in
                        make.edges.equalTo(self)
                    }
                    self.alpha = 0.1
                }) { _ in
                    switch screenSize {
                    case .normal:
                        self.setBackgroundImage(self.normalImage, for: .normal)
                    case .small:
                        self.setBackgroundImage(self.normalSmallImage, for: .normal)
                    }
                    self.alpha = 1.0
                    tmpImage.removeFromSuperview()
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
    
    enum CalculatorButtonType {
        case number
        case operation
        case singleFunction
        case equal
    }
}
