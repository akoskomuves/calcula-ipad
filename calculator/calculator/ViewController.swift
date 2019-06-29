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
        sender.backgroundColor = UIColor(red: 38/255, green: 38/255, blue: 38/255, alpha: 1)
        if operation {
            self.highlightedButton?.backgroundColor = UIColor(red: 255/255, green: 123/255, blue: 0/255, alpha: 1)

            if let highlightedButton = highlightedButton {
                switch op {
                case "*": highlightedButton.setImage(UIImage(named: "Multiplication"), for: .normal)
                case "/": highlightedButton.setImage(UIImage(named: "Division"), for: .normal)
                case "-": highlightedButton.setImage(UIImage(named: "Substraction"), for: .normal)
                case "+": highlightedButton.setImage(UIImage(named: "Addition"), for: .normal)
                default: ()
                }

            }
        }
        if let number = sender.accessibilityIdentifier {
            if number == "," {
                if hasComma {
                    return
                }
                hasComma = true
            }
            var textnum = String(numberlabel.text!)
            if operation {
                textnum = (number == ",") ? "0" : ""
                operation = false
            }
            textnum = textnum + number
            numberlabel.text = textnum
        }
    }

    //clear button action
    @IBAction func acaction(_ sender: UIButton) {
        sender.backgroundColor = UIColor(red: 109/255, green: 109/255, blue: 109/255, alpha: 1)
        numberlabel.text = "0"
        operation = true
        hasComma = false
    }

    //number making negitive
    @IBAction func some(_ sender: UIButton) {
        sender.backgroundColor = UIColor(red: 109/255, green: 109/255, blue: 109/255, alpha: 1)
        var textnum = String(numberlabel.text!)
        textnum = "-" + textnum
        numberlabel.text = textnum
        operation = true
    }

    //percent button
    @IBAction func percentage(_ sender: UIButton) {
        sender.backgroundColor = UIColor(red: 109/255, green: 109/255, blue: 109/255, alpha: 1)

        var number1 = numberlabel.text!.doubleValue
        number1 = number1/100.0
        numberlabel.text = String(number1)
        operation = true
        hasComma = false
    }
    
    @IBAction func baseOperatorDidTap(_ sender: UIButton) {
        if operation {
                self.highlightedButton?.backgroundColor = UIColor(red: 255/255, green: 123/255, blue: 0/255, alpha: 1)

                if let highlightedButton = highlightedButton {
                switch op {
                case "*": highlightedButton.setImage(UIImage(named: "Multiplication"), for: .normal)
                case "/": highlightedButton.setImage(UIImage(named: "Division"), for: .normal)
                case "-": highlightedButton.setImage(UIImage(named: "Substraction"), for: .normal)
                case "+": highlightedButton.setImage(UIImage(named: "Addition"), for: .normal)
                default: ()
                }

            }
        }
        highlightedButton = sender as? CustomButton
        sender.backgroundColor = .white
        op = sender.accessibilityIdentifier ?? ""

        switch op {
        case "*": sender.setImage(UIImage(named: "multiplication_selected"), for: .normal)
        case "/": sender.setImage(UIImage(named: "division_selected"), for: .normal)
        case "-": sender.setImage(UIImage(named: "substraction_selected"), for: .normal)
        case "+": sender.setImage(UIImage(named: "addition_selected"), for: .normal)
        default: ()
        }

        number1 = numberlabel.text!.doubleValue
        operation = true
        hasComma = false
    }
    
    @IBAction func eqauls(_ sender: UIButton) {
        sender.backgroundColor = UIColor(red: 255/255, green: 123/255, blue: 0/255, alpha: 1)
        highlightedButton?.backgroundColor = UIColor(red: 255/255, green: 123/255, blue: 0/255, alpha: 1)

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
            switch op {
            case "*": highlightedButton.setImage(UIImage(named: "Multiplication"), for: .normal)
            case "/": highlightedButton.setImage(UIImage(named: "Division"), for: .normal)
            case "-": highlightedButton.setImage(UIImage(named: "Substraction"), for: .normal)
            case "+": highlightedButton.setImage(UIImage(named: "Addition"), for: .normal)
            default: ()
            }
        }
        if let result = result {
            let value  = String(format: "%g", result)
            numberlabel.text = value.replacingOccurrences(of: ".", with: ",")

        } else {
            numberlabel.text = "Error"
        }

        operation = true
        hasComma = false
    }

    @IBAction func changeNumberColorTouchDown(_ sender: UIButton) {
        sender.backgroundColor = UIColor(red: 83/255, green: 83/255, blue: 83/255, alpha: 1)
    }

    @IBAction func changeOperatorColorTouchDown(_ sender: UIButton) {
        sender.backgroundColor = UIColor(red: 255/255, green: 189/255, blue: 96/255, alpha: 1)
    }

    @IBAction func changeUnaryColorTouchDown(_ sender: UIButton) {
        sender.backgroundColor = UIColor(red: 163/255, green: 163/255, blue: 163/255, alpha: 1)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print(size.width)

        if size.width <= 320 {
            numberlabel.font = UIFont.systemFont(ofSize: 46, weight: .light)
            labelStackViewSpace.constant = 15
            numberLabelHeight.constant = 60
            self.stackViewHeight.constant = 360
            self.allHeights.forEach({ height in
                height.constant = 60
            })
            buttons.forEach({ button in
                button.layer.cornerRadius = 0.5 * 60
                button.layoutIfNeeded()
                button.setNeedsUpdateConstraints()
            })

            stackView.spacing = 15
            firstStackView.spacing = 15
            secondStackView.spacing = 15
            thirdStackView.spacing = 15
            fourthStackView.spacing = 15
        } else {
            numberlabel.font = UIFont.systemFont(ofSize: 64, weight: .light)
            labelStackViewSpace.constant = 20
            numberLabelHeight.constant = 80
            self.stackViewHeight.constant = 480
            self.allHeights.forEach({ height in
                height.constant = 80
            })
            buttons.forEach({ button in
                button.layer.cornerRadius = 0.5 * 80
                button.layoutIfNeeded()
                button.setNeedsUpdateConstraints()
            })

            stackView.spacing = 20
            firstStackView.spacing = 20
            secondStackView.spacing = 20
            thirdStackView.spacing = 20
            fourthStackView.spacing = 20
        }
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
