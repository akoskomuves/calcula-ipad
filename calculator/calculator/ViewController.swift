import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    var numberlabel = UILabel()
    var highlightedButton: CustomButton?
    static var cEnabled = false
    
    var stackView = UIStackView()
    var firstStackView = UIStackView()
    var secondStackView = UIStackView()
    var thirdStackView = UIStackView()
    var fourthStackView = UIStackView()
    
    var stackViewHeight: NSLayoutConstraint!
    var labelStackViewSpace: NSLayoutConstraint!
    var numberLabelHeight: NSLayoutConstraint!
    
    var acButton = CustomButton(
        tappedImage: UIImage(named: "ac_tap")!,
        tappedSmallImage: UIImage(named: "ac_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "ac_norm")!,
        normalSmallImage: UIImage(named: "ac_small")!,
        type: .singleFunction,
        acButton: true
    )
    
    var plusMinusButton = CustomButton(
        tappedImage: UIImage(named: "plus_minus_tap")!,
        tappedSmallImage: UIImage(named: "plus_minus_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "plus_minus_norm")!,
        normalSmallImage: UIImage(named: "plus_minus_small")!,
        type: .singleFunction
    )
    
    var percentageButton = CustomButton(
        tappedImage: UIImage(named: "perc_tap")!,
        tappedSmallImage: UIImage(named: "perc_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "perc_norm")!,
        normalSmallImage: UIImage(named: "perc_small")!,
        type: .singleFunction
    )
    
    var divideButton = CustomButton(
        tappedImage: UIImage(named: "div_tap")!,
        tappedSmallImage: UIImage(named: "div_tap_small")!,
        selectedImage: UIImage(named: "div_sel"),
        selectedSmallImage: UIImage(named: "div_sel_small"),
        normalImage: UIImage(named: "div_norm")!,
        normalSmallImage: UIImage(named: "div_small")!,
        type: .operation
    )
    
    var sevenButton = CustomButton(
        tappedImage: UIImage(named: "7_tap")!,
        tappedSmallImage: UIImage(named: "7_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "7_norm")!,
        normalSmallImage: UIImage(named: "7_small")!,
        type: .number
    )
    
    var eightButton = CustomButton(
        tappedImage: UIImage(named: "8_tap")!,
        tappedSmallImage: UIImage(named: "8_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "8_norm")!,
        normalSmallImage: UIImage(named: "8_small")!,
        type: .number)
    
    var nineButton = CustomButton(
        tappedImage: UIImage(named: "9_tap")!,
        tappedSmallImage: UIImage(named: "9_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "9_norm")!,
        normalSmallImage: UIImage(named: "9_small")!,
        type: .number)
    
    var multiplyButton = CustomButton(
        tappedImage: UIImage(named: "mult_tap")!,
        tappedSmallImage: UIImage(named: "mult_tap_small")!,
        selectedImage: UIImage(named: "mult_sel"),
        selectedSmallImage: UIImage(named: "mult_sel_small"),
        normalImage: UIImage(named: "mult_norm")!,
        normalSmallImage: UIImage(named: "mult_small")!,
        type: .operation
    )
    
    var fourthButton = CustomButton(
        tappedImage: UIImage(named: "4_tap")!,
        tappedSmallImage: UIImage(named: "4_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "4_norm")!,
        normalSmallImage: UIImage(named: "4_small")!,
        type: .number
    )
    
    var fifthButton = CustomButton(
        tappedImage: UIImage(named: "5_tap")!,
        tappedSmallImage: UIImage(named: "5_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "5_norm")!,
        normalSmallImage: UIImage(named: "5_small")!,
        type: .number
    )
    
    var sixthButton = CustomButton(
        tappedImage: UIImage(named: "6_tap")!,
        tappedSmallImage: UIImage(named: "6_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "6_norm")!,
        normalSmallImage: UIImage(named: "6_small")!,
        type: .number
    )
    
    var substractionButton = CustomButton(
        tappedImage: UIImage(named: "sub_tap")!,
        tappedSmallImage: UIImage(named: "sub_tap_small")!,
        selectedImage: UIImage(named: "sub_sel"),
        selectedSmallImage: UIImage(named: "sub_sel_small"),
        normalImage: UIImage(named: "sub_norm")!,
        normalSmallImage: UIImage(named: "sub_small")!,
        type: .operation)
    
    var firstButton = CustomButton(
        tappedImage: UIImage(named: "1_tap")!,
        tappedSmallImage: UIImage(named: "1_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "1_norm")!,
        normalSmallImage: UIImage(named: "1_small")!,
        type: .number
    )
    
    var secondButton = CustomButton(
        tappedImage: UIImage(named: "2_tap")!,
        tappedSmallImage: UIImage(named: "2_tap_small")!,
        selectedImage: nil, selectedSmallImage: nil,
        normalImage: UIImage(named: "2_norm")!,
        normalSmallImage: UIImage(named: "2_small")!,
        type: .number
    )
    
    var thirdButton = CustomButton(
        tappedImage: UIImage(named: "3_tap")!,
        tappedSmallImage: UIImage(named: "3_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "3_norm")!,
        normalSmallImage: UIImage(named: "3_small")!,
        type: .number
    )
    
    var additionButton = CustomButton(
        tappedImage: UIImage(named: "add_tap")!,
        tappedSmallImage: UIImage(named: "add_tap_small")!,
        selectedImage: UIImage(named: "add_sel"),
        selectedSmallImage: UIImage(named: "add_sel_small"),
        normalImage: UIImage(named: "add_norm")!,
        normalSmallImage: UIImage(named: "add_small")!,
        type: .operation
    )
    
    var zeroButton = CustomButton(
        tappedImage: UIImage(named: "0_tap")!,
        tappedSmallImage: UIImage(named: "0_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "0_norm")!,
        normalSmallImage: UIImage(named: "0_small")!,
        type: .number
    )
    
    var dotButton = CustomButton(
        tappedImage: UIImage(named: "dot_tap")!,
        tappedSmallImage: UIImage(named: "dot_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "dot_norm")!,
        normalSmallImage: UIImage(named: "dot_small")!,
        type: .number
    )
    
    var equalButton = CustomButton(
        tappedImage: UIImage(named: "equal_tap")!,
        tappedSmallImage: UIImage(named: "equal_tap_small")!,
        selectedImage: nil,
        selectedSmallImage: nil,
        normalImage: UIImage(named: "equal_norm")!,
        normalSmallImage: UIImage(named: "equal_small")!,
        type: .equal
    )
    
    var buttons: [CustomButton] = []
    
    @IBOutlet var allHeights: [NSLayoutConstraint]!
    var op = "+"
    var number1 : Double?
    var operation = true
    var hasComma = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubview(numberlabel)
        numberlabel.textAlignment = .right
        numberlabel.text = "0"
        numberlabel.textColor = .white
        numberlabel.font = UIFont.systemFont(ofSize: 64, weight: .light)
        numberlabel.numberOfLines = 1
        numberlabel.adjustsFontSizeToFitWidth = true
        
        view.addSubview(stackView)
        stackView.contentMode = .scaleToFill
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        
        numberlabel.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(340)
            make.bottom.equalTo(stackView.snp.top).offset(-20)
            make.centerX.equalTo(stackView)
        }
        
        stackView.addArrangedSubview(firstStackView)
        firstStackView.contentMode = .scaleToFill
        firstStackView.axis = .horizontal
        firstStackView.distribution = .fillEqually
        firstStackView.spacing = 20
        
        firstStackView.addArrangedSubview(acButton)
        acButton.addTarget(self, action: #selector(acaction), for: .touchUpInside)
        acButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        firstStackView.addArrangedSubview(plusMinusButton)
        plusMinusButton.addTarget(self, action: #selector(some), for: .touchUpInside)
        plusMinusButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        firstStackView.addArrangedSubview(percentageButton)
        percentageButton.addTarget(self, action: #selector(percentage), for: .touchUpInside)
        percentageButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        firstStackView.addArrangedSubview(divideButton)
        divideButton.accessibilityIdentifier = "/"
        divideButton.addTarget(self, action: #selector(baseOperatorDidTap), for: .touchUpInside)
        divideButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        
        stackView.addArrangedSubview(secondStackView)
        secondStackView.contentMode = .scaleToFill
        secondStackView.axis = .horizontal
        secondStackView.distribution = .fillEqually
        secondStackView.spacing = 20
        
        secondStackView.addArrangedSubview(sevenButton)
        sevenButton.accessibilityIdentifier = "7"
        sevenButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        secondStackView.addArrangedSubview(eightButton)
        eightButton.accessibilityIdentifier = "8"
        eightButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        secondStackView.addArrangedSubview(nineButton)
        nineButton.accessibilityIdentifier = "9"
        nineButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        secondStackView.addArrangedSubview(multiplyButton)
        multiplyButton.accessibilityIdentifier = "*"
        multiplyButton.addTarget(self, action: #selector(baseOperatorDidTap), for: .touchUpInside)
        multiplyButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        
        stackView.addArrangedSubview(thirdStackView)
        thirdStackView.contentMode = .scaleToFill
        thirdStackView.axis = .horizontal
        thirdStackView.distribution = .fillEqually
        thirdStackView.spacing = 20
        
        thirdStackView.addArrangedSubview(fourthButton)
        fourthButton.accessibilityIdentifier = "4"
        fourthButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        fourthButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        thirdStackView.addArrangedSubview(fifthButton)
        fifthButton.accessibilityIdentifier = "5"
        fifthButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        fifthButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        thirdStackView.addArrangedSubview(sixthButton)
        sixthButton.accessibilityIdentifier = "6"
        sixthButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        sixthButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        thirdStackView.addArrangedSubview(substractionButton)
        substractionButton.accessibilityIdentifier = "-"
        substractionButton.addTarget(self, action: #selector(baseOperatorDidTap), for: .touchUpInside)
        substractionButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        
        stackView.addArrangedSubview(fourthStackView)
        fourthStackView.contentMode = .scaleToFill
        fourthStackView.axis = .horizontal
        fourthStackView.distribution = .fillEqually
        fourthStackView.spacing = 20
        
        fourthStackView.addArrangedSubview(firstButton)
        firstButton.accessibilityIdentifier = "1"
        firstButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        firstButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        fourthStackView.addArrangedSubview(secondButton)
        secondButton.accessibilityIdentifier = "2"
        secondButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        fourthStackView.addArrangedSubview(thirdButton)
        thirdButton.accessibilityIdentifier = "3"
        thirdButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        fourthStackView.addArrangedSubview(additionButton)
        additionButton.accessibilityIdentifier = "+"
        additionButton.addTarget(self, action: #selector(baseOperatorDidTap), for: .touchUpInside)
        additionButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        
        let fifthView = UIView()
        stackView.addArrangedSubview(fifthView)
        fifthView.addSubview(zeroButton)
        zeroButton.accessibilityIdentifier = "0"
        zeroButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        zeroButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        zeroButton.snp.makeConstraints { (make) in
            make.left.top.bottom.equalToSuperview()
        }
        fifthView.addSubview(dotButton)
        dotButton.addTarget(self, action: #selector(numberDidTap), for: .touchUpInside)
        dotButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        dotButton.accessibilityIdentifier = "."
        dotButton.snp.makeConstraints { (make) in
            make.left.equalTo(zeroButton.snp.right).offset(20)
            make.top.bottom.equalToSuperview()
        }
        fifthView.addSubview(equalButton)
        equalButton.addTarget(self, action: #selector(equals), for: .touchUpInside)
        equalButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        equalButton.accessibilityIdentifier = "="
        equalButton.snp.makeConstraints { (make) in
            make.left.equalTo(dotButton.snp.right).offset(20)
            make.top.bottom.right.equalToSuperview()
        }
        
        buttons.append(acButton)
        buttons.append(plusMinusButton)
        buttons.append(percentageButton)
        buttons.append(divideButton)
        buttons.append(sevenButton)
        buttons.append(eightButton)
        buttons.append(nineButton)
        buttons.append(multiplyButton)
        buttons.append(fourthButton)
        buttons.append(fifthButton)
        buttons.append(sixthButton)
        buttons.append(substractionButton)
        buttons.append(firstButton)
        buttons.append(secondButton)
        buttons.append(thirdButton)
        buttons.append(additionButton)
        buttons.append(zeroButton)
        buttons.append(dotButton)
        buttons.append(equalButton)
        
        buttons.forEach { button in
            button.buttonState = .normal
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func numberDidTap(_ sender: UIButton) {
        ViewController.cEnabled = true
        switch screenSize {
        case .normal:
            acButton.setBackgroundImage(UIImage(named: "c_norm")!, for: .normal)
        case .small:
            acButton.setBackgroundImage(UIImage(named: "c_small")!, for: .normal)
        }
        if let button = sender as? CustomButton {
            button.buttonState = .normal
        }
        if operation {
            self.highlightedButton?.buttonState = .normal
        }
        if sender.accessibilityIdentifier == "." {
            if hasComma {
                return
            }
            hasComma = true
        }
        var textnum = String(numberlabel.text ?? "")
        if operation {
            textnum = (sender.accessibilityIdentifier == ".") ? "0" : ""
            operation = false
        }
        textnum = textnum + (sender.accessibilityIdentifier ?? "")
        numberlabel.text = textnum.maxLength(length: 9)
    }
    
    @objc func buttonTouchDown(_ sender: UIButton) {
        if let button = sender as? CustomButton {
            button.buttonState = .tapped
        }
    }
    
    //clear button action
    @objc func acaction(_ sender: UIButton) {
        if let acButton = sender as? CustomButton {
            acButton.buttonState = .normal
        }
        if ViewController.cEnabled {
            numberlabel.text = "0"
            ViewController.cEnabled = false
        } else {
            if operation {
                self.highlightedButton?.buttonState = .normal
            }
            self.highlightedButton = nil
            number1 = nil
            numberlabel.text = "0"
            operation = true
            hasComma = false
        }
    }
    
    //number making negitive
    @objc func some(_ sender: UIButton) {
        if let negative = sender as? CustomButton {
            negative.buttonState = .normal
        }
        var textnum = String(numberlabel.text!).maxLength(length: 9)
        
        if textnum.contains("-") {
            textnum.remove(at: textnum.startIndex)
        } else {
            textnum = "-" + textnum
        }
        
        if let number = Double(textnum) {
            let value  = String(format: "%g", number)
            numberlabel.text = value.maxLength(length: 9)
        } else {
            numberlabel.text = "0"
        }
        
        operation = true
    }
    
    //percent button
    @objc func percentage(_ sender: UIButton) {
        if let perc = sender as? CustomButton {
            perc.buttonState = .normal
        }
        var number1 = numberlabel.text!.doubleValue
        number1 = number1/100.0
        numberlabel.text = String(number1).maxLength(length: 9)
        operation = true
        hasComma = false
    }
    
    @objc func baseOperatorDidTap(_ sender: UIButton) {
        if operation {
            self.highlightedButton?.buttonState = .normal
        }
        highlightedButton = sender as? CustomButton
        op = sender.accessibilityIdentifier ?? ""
        highlightedButton?.buttonState = .selected
        
        number1 = numberlabel.text!.doubleValue
        operation = true
        hasComma = false
    }
    
    @objc func equals(_ sender: UIButton) {
        highlightedButton?.buttonState = .normal
        
        if let button = sender as? CustomButton {
            button.buttonState = .normal
        }
        self.highlightedButton?.buttonState = .normal
        
        let number2 = numberlabel.text!.doubleValue
        var result: Double?
        
        if let number1 = number1 {
            switch op {
            case "*": result = number1 * number2
            case "/":
                if number2 != 0 {
                    result = number1 / number2
                }
            case "-": result = number1 - number2
            case "+": result = number1 + number2
            default:
                result = 0.0
            }
        } else {
            result = number2
        }
        
        if let highlightedButton = highlightedButton {
            highlightedButton.buttonState = .normal
        }
        if let result = result {
            let value  = String(format: "%g", result)
            numberlabel.text = value.maxLength(length: 9)
        } else {
            numberlabel.text = "Error"
        }
        
        operation = true
        hasComma = false
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print(size.width)
        
        if size.width <= 320 {
            screenSize = .small
            
            numberlabel.font = UIFont.systemFont(ofSize: 48, weight: .light)
            numberlabel.snp.updateConstraints { make in
                make.height.equalTo(60)
                make.width.equalTo(255)
                make.bottom.equalTo(stackView.snp.top).offset(-16)
            }
            
            stackView.spacing = 15
            firstStackView.spacing = 15
            secondStackView.spacing = 15
            thirdStackView.spacing = 15
            fourthStackView.spacing = 15
        } else {
            screenSize = .normal
            
            numberlabel.font = UIFont.systemFont(ofSize: 64, weight: .light)
            numberlabel.snp.updateConstraints { make in
                make.height.equalTo(80)
                make.width.equalTo(340)
                make.bottom.equalTo(stackView.snp.top).offset(-20)
            }
            
            stackView.spacing = 20
            firstStackView.spacing = 20
            secondStackView.spacing = 20
            thirdStackView.spacing = 20
            fourthStackView.spacing = 20
        }
        
        buttons.forEach({ button in
            button.buttonState = button.buttonState
        })
    }
    
}

extension String {
    static let numberFormatter = NumberFormatter()
    var doubleValue: Double {
        String.numberFormatter.decimalSeparator = "."
        if let result =  String.numberFormatter.number(from: self) {
            return result.doubleValue
        } else {
            String.numberFormatter.decimalSeparator = ","
            if let result = String.numberFormatter.number(from: self) {
                return result.doubleValue
            }
        }
        return 0
    }
    
    func maxLength(length: Int) -> String {
        var str = self
        let nsString = str as NSString
        if nsString.length >= length {
            str = nsString.substring(with:
                NSRange(
                    location: 0,
                    length: nsString.length > length ? length : nsString.length)
            )
        }
        return  str
    }
}

public var screenSize = ScreenSize.normal

public enum ScreenSize {
    case small
    case normal
}
