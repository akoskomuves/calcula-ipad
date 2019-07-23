import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberlabel: UILabel!
    var highlightedButton: CustomButton?

    @IBOutlet var stackView: UIStackView!
    @IBOutlet var firstStackView: UIStackView!
    @IBOutlet var secondStackView: UIStackView!
    @IBOutlet var thirdStackView: UIStackView!
    @IBOutlet var fourthStackView: UIStackView!

    @IBOutlet var stackViewHeight: NSLayoutConstraint!
    @IBOutlet var labelStackViewSpace: NSLayoutConstraint!
    @IBOutlet var numberLabelHeight: NSLayoutConstraint!

    @IBOutlet var acButton: CustomButton!
    @IBOutlet var reverseButton: CustomButton!
    @IBOutlet var percentageButton: CustomButton!
    @IBOutlet var divideButton: CustomButton!
    @IBOutlet var sevenButton: CustomButton!
    @IBOutlet var eightButton: CustomButton!
    @IBOutlet var nineButton: CustomButton!
    @IBOutlet var multiplyButton: CustomButton!
    @IBOutlet var fourthButton: CustomButton!
    @IBOutlet var fifthButton: CustomButton!
    @IBOutlet var sixthButton: CustomButton!
    @IBOutlet var substractionButton: CustomButton!
    @IBOutlet var firstButton: CustomButton!
    @IBOutlet var secondButton: CustomButton!
    @IBOutlet var thirdButton: CustomButton!
    @IBOutlet var additionButton: CustomButton!
    @IBOutlet var zeroButton: CustomButton!
    @IBOutlet var dotButton: CustomButton!
    @IBOutlet var equalButton: CustomButton!

    var buttons: [CustomButton] = []

    @IBOutlet var allHeights: [NSLayoutConstraint]!
    var op = "+"
    var number1 : Double?
    var operation = true
    var hasComma = false

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "ac_tap")
        let imageView = UIImageView(image: image)
        self.view.addSubview(imageView)

//        acButton.setImages(tappedImage: image,
//                           tappedSmallImage: UIImage(named: "ac_tap_small"),
//                           selectedImage: nil, selectedSmallImage: nil,
//                           normalImage: UIImage(named: "ac_norm"),
//                           normalSmallImage: UIImage(named: "ac_small"))
//        reverseButton.setImages(tappedImage: UIImage(named: "plus_minus_tap"), tappedSmallImage: UIImage(named: "plus_minus_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "plus_minus_norm"), normalSmallImage: UIImage(named: "plus_minus_small"))
//        percentageButton.setImages(tappedImage: UIImage(named: "perc_tap"), tappedSmallImage: UIImage(named: "perc_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "perc_norm"), normalSmallImage: UIImage(named: "perc_small"))
//        divideButton.setImages(tappedImage: UIImage(named: "div_tap"), tappedSmallImage: UIImage(named: "div_tap_small"), selectedImage: UIImage(named: "div_sel"), selectedSmallImage: UIImage(named: "div_sel_small"), normalImage: UIImage(named: "div_norm"), normalSmallImage: UIImage(named: "div_small"))
//        sevenButton.setImages(tappedImage: UIImage(named: "7_tap"), tappedSmallImage: UIImage(named: "7_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "7_norm"), normalSmallImage: UIImage(named: "7_small"))
//        eightButton.setImages(tappedImage: UIImage(named: "8_tap"), tappedSmallImage: UIImage(named: "8_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "8_norm"), normalSmallImage: UIImage(named: "8_small"))
//        nineButton.setImages(tappedImage: UIImage(named: "9_tap"), tappedSmallImage: UIImage(named: "9_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "9_norm"), normalSmallImage: UIImage(named: "9_small"))
//        sixthButton.setImages(tappedImage: UIImage(named: "6_tap"), tappedSmallImage: UIImage(named: "6_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "6_norm"), normalSmallImage: UIImage(named: "6_small"))
//        fifthButton.setImages(tappedImage: UIImage(named: "5_tap"), tappedSmallImage: UIImage(named: "5_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "5_norm"), normalSmallImage: UIImage(named: "5_small"))
//        fourthButton.setImages(tappedImage: UIImage(named: "4_tap"), tappedSmallImage: UIImage(named: "4_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "4_norm"), normalSmallImage: UIImage(named: "4_small"))
//        thirdButton.setImages(tappedImage: UIImage(named: "3_tap"), tappedSmallImage: UIImage(named: "3_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "3_norm"), normalSmallImage: UIImage(named: "3_small"))
//        secondButton.setImages(tappedImage: UIImage(named: "2_tap"), tappedSmallImage: UIImage(named: "2_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "2_norm"), normalSmallImage: UIImage(named: "2_small"))
//        firstButton.setImages(tappedImage: UIImage(named: "1_tap"), tappedSmallImage: UIImage(named: "1_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "1_norm"), normalSmallImage: UIImage(named: "1_small"))
//        zeroButton.setImages(tappedImage: UIImage(named: "0_tap"), tappedSmallImage: UIImage(named: "0_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "0_norm"), normalSmallImage: UIImage(named: "0_small"))
//        multiplyButton.setImages(tappedImage: UIImage(named: "mult_tap"), tappedSmallImage: UIImage(named: "mult_tap_small"), selectedImage: UIImage(named: "mult_sel"), selectedSmallImage: UIImage(named: "mult_sel_small"), normalImage: UIImage(named: "mult_norm"), normalSmallImage: UIImage(named: "mult_small"))
//        substractionButton.setImages(tappedImage: UIImage(named: "sub_tap"), tappedSmallImage: UIImage(named: "sub_tap_small"), selectedImage: UIImage(named: "sub_sel"), selectedSmallImage: UIImage(named: "sub_sel_small"), normalImage: UIImage(named: "sub_norm"), normalSmallImage: UIImage(named: "sub_small"))
//        additionButton.setImages(tappedImage: UIImage(named: "add_tap"), tappedSmallImage: UIImage(named: "add_tap_small"), selectedImage: UIImage(named: "add_sel"), selectedSmallImage: UIImage(named: "add_sel_small"), normalImage: UIImage(named: "add_norm"), normalSmallImage: UIImage(named: "add_small"))
//        dotButton.setImages(tappedImage: UIImage(named: "dot_tap"), tappedSmallImage: UIImage(named: "dot_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "dot_norm"), normalSmallImage: UIImage(named: "dot_small"))
//        equalButton.setImages(tappedImage: UIImage(named: "equal_tap"), tappedSmallImage: UIImage(named: "equal_tap_small"), selectedImage: nil, selectedSmallImage: nil, normalImage: UIImage(named: "equal_norm"), normalSmallImage: UIImage(named: "equal_small"))

        buttons.append(acButton)
        buttons.append(reverseButton)
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func numberDidTap(_ sender: UIButton) {
        if let button = sender as? CustomButton {
            button.buttonState = .tapped
        }
        if operation {
            self.highlightedButton?.buttonState = .normal
        }
        if let number = sender.accessibilityIdentifier {
            if number == "." {
                if hasComma {
                    return
                }
                hasComma = true
            }
            var textnum = String(numberlabel.accessibilityIdentifier ?? "")
            if operation {
                textnum = (number == ".") ? "0" : ""
                operation = false
            }
            textnum = textnum + number
            numberlabel.text = textnum
        }
    }

    //clear button action
    @IBAction func acaction(_ sender: UIButton) {
        if let acButton = sender as? CustomButton {
            acButton.buttonState = .normal
        }
        numberlabel.text = "0"
        operation = true
        hasComma = false
    }

    //number making negitive
    @IBAction func some(_ sender: UIButton) {
        if let negative = sender as? CustomButton {
            negative.buttonState = .normal
        }
        var textnum = String(numberlabel.text!)
        textnum = "-" + textnum
        numberlabel.text = textnum
        operation = true
    }

    //percent button
    @IBAction func percentage(_ sender: UIButton) {
        if let perc = sender as? CustomButton {
            perc.buttonState = .normal
        }
        var number1 = numberlabel.text!.doubleValue
        number1 = number1/100.0
        numberlabel.text = String(number1)
        operation = true
        hasComma = false
    }
    
    @IBAction func baseOperatorDidTap(_ sender: UIButton) {
        if operation {
                self.highlightedButton?.buttonState = .normal
        }
        highlightedButton = sender as? CustomButton
        sender.backgroundColor = .white
        op = sender.accessibilityIdentifier ?? ""

//        switch op {
//        case "*": sender.setImage(UIImage(named: "multiplication_selected"), for: .normal)
//        case "/": sender.setImage(UIImage(named: "division_selected"), for: .normal)
//        case "-": sender.setImage(UIImage(named: "substraction_selected"), for: .normal)
//        case "+": sender.setImage(UIImage(named: "addition_selected"), for: .normal)
//        default: ()
//        }

        number1 = numberlabel.text!.doubleValue
        operation = true
        hasComma = false
    }
    
    @IBAction func eqauls(_ sender: UIButton) {
//        sender.backgroundColor = UIColor(red: 255/255, green: 123/255, blue: 0/255, alpha: 1)
//        highlightedButton?.backgroundColor = UIColor(red: 255/255, green: 123/255, blue: 0/255, alpha: 1)

        if let eq = sender as? CustomButton {
            eq.buttonState = .normal
        }
        self.highlightedButton?.buttonState = .normal

        let number2 = numberlabel.text!.doubleValue
        var result: Double?
        
        switch op {
        case "*": result = number1! * number2
        case "/":
            if number2 != 0 {
                result = number1! / number2
            }
        case "-": result = number1! - number2
        case "+": result = number1! + number2
        default:
            result = 0.0
        }

        if let highlightedButton = highlightedButton {
//            switch op {
//            case "*": highlightedButton.setImage(UIImage(named: "Multiplication"), for: .normal)
//            case "/": highlightedButton.setImage(UIImage(named: "Division"), for: .normal)
//            case "-": highlightedButton.setImage(UIImage(named: "Substraction"), for: .normal)
//            case "+": highlightedButton.setImage(UIImage(named: "Addition"), for: .normal)
//            default: ()
//            }
        }
        if let result = result {
            let value  = String(format: "%g", result)
            numberlabel.text = value
        } else {
            numberlabel.text = "Error"
        }

        operation = true
        hasComma = false
    }

    @IBAction func changeNumberColorTouchDown(_ sender: UIButton) {
        if let button = sender as? CustomButton {
            button.buttonState = .tapped
        }
    }

    @IBAction func changeOperatorColorTouchDown(_ sender: UIButton) {
        if let button = sender as? CustomButton {
            button.buttonState = .tapped
        }
    }

    @IBAction func changeUnaryColorTouchDown(_ sender: UIButton) {
        if let button = sender as? CustomButton {
            button.buttonState = .tapped
        }
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print(size.width)

        if size.width <= 320 {
            screenSize = .normal

            stackView.spacing = 15
            firstStackView.spacing = 15
            secondStackView.spacing = 15
            thirdStackView.spacing = 15
            fourthStackView.spacing = 15
        } else {

            screenSize = .small

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
}

public var screenSize = ScreenSize.normal

public enum ScreenSize {
    case small
    case normal
}
