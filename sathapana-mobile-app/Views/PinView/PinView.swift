//
//  PinView.swift
//  sathapana-mobile-app
//
//  Created by Sreng125 on 3/24/21.
//

import UIKit

class PinView: UIView, NibLoadableView {

    @IBOutlet weak var pinTextField: UITextField!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var forthView: UIView!
    @IBOutlet weak var fifthView: UIView!
    @IBOutlet weak var sixthView: UIView!
    @IBOutlet weak var containerView: UIStackView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var forthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }
    
    override func awakeFromNib() {
        setUI()
    }
}

// MARK:  Functions
extension PinView {
    
    private func setUI() {
        let keyboardView = NumbericPad(frame: CGRect(x: 0, y: 0, width: 0, height: 320))
        keyboardView.delegate = self
        pinTextField.inputView = keyboardView
        
        let tabGesture = UITapGestureRecognizer(target: self, action: #selector(setPinTFAction))
        containerView.addGestureRecognizer(tabGesture)
        
        firstView.setBoarder()
        secondView.setBoarder()
        thirdView.setBoarder()
        forthView.setBoarder()
        fifthView.setBoarder()
        sixthView.setBoarder()
        
        firstLabel.isHidden = true
        secondLabel.isHidden = true
        thirdLabel.isHidden = true
        forthLabel.isHidden = true
        fifthLabel.isHidden = true
        sixthLabel.isHidden = true
    }

    func clear() {
        pinTextField.text = ""
        firstView.isHidden = true
        secondView.isHidden = true
        thirdView.isHidden = true
        forthView.isHidden = true
        fifthView.isHidden = true
        sixthView.isHidden = true
    }
}

// MARK:  Functions
extension PinView {
    
    private func setCurrentOTP(index: Int, isHidden: Bool) {
        print(index)
        switch index {
        case 1:
//            firstView.isHidden = isHidden
            firstLabel.isHidden = !isHidden
        case 2:
//            secondView.isHidden = isHidden
            secondLabel.isHidden = !isHidden
        case 3:
//            thirdView.isHidden = isHidden
            thirdLabel.isHidden = !isHidden
        case 4:
//            forthView.isHidden = isHidden
            forthLabel.isHidden = !isHidden
        case 5:
//            fifthView.isHidden = isHidden
            fifthLabel.isHidden = !isHidden
        case 6:
//            sixthView.isHidden = isHidden
            sixthLabel.isHidden = !isHidden
            if !isHidden {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//                    self.pushNotificationNotify()
                }
            }
        default:
            break
        }
    }
    
    @objc func setPinTFAction() {
        pinTextField.becomeFirstResponder()
    }
}

// MARK:  Keyboard Delegate
extension PinView: KeyboardDelegate {
    func scanTapped() {
        print("Scan")
    }
    
    func numPadTapped(character: String) {
        guard pinTextField.text?.count ?? 0 <= 5 else { return }
        pinTextField.text = (pinTextField.text ?? "") + character
        switch pinTextField.text?.count {
        case 1:
            firstLabel.text = character
        case 2:
            secondLabel.text = character
        case 3:
            thirdLabel.text = character
        case 4:
            forthLabel.text = character
        case 5:
            fifthLabel.text = character
        case 6:
            sixthLabel.text = character
        default:
            break
        }
        setCurrentOTP(index: pinTextField.text?.count ?? -1 , isHidden: true)
    }
    
    func deletePadTapped() {
        guard var pin = pinTextField.text else { return }
        KeyboardHelper.shared.removeLastIndexString(string: &pin)
        pinTextField.text = pin
        setCurrentOTP(index: (pinTextField.text?.count ?? 0) + 1, isHidden: false)
    }
}
