//
//  LoginViewController.swift
//  sathapana-mobile-app
//
//  Created by Sovanndy Ul on 29/3/21.
//

import UIKit

class LoginViewController: BaseViewController {
    @IBOutlet weak var loginWithPhoneNumberButton :UIButton!
    @IBOutlet weak var activateButton :UIButton!
    @IBOutlet weak var createNewAccountButton :UIButton!

    // MARK: - View Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Private Methods
    private func setupView() {
        loginWithPhoneNumberButton.setTitle("login_screen_button_login".localizedString, for: .normal)
        activateButton.setTitle("login_screen_button_activiation".localizedString, for: .normal)
        createNewAccountButton.setTitle("login_screen_button_create_new_account".localizedString, for: .normal)
    }
    
    // MARK: - Actions
    @IBAction func didTapLoginWithPhoneNumber() {
        let vc = LoginWithPhoneViewController()
        vc.viewModel = LoginWithMobileViewModel()
        navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func didTapActivation() {
        let vc = ActivateMobileViewController()
        vc.viewModel = ActivateMobileViewModel()
        navigationController?.pushViewController(vc, animated: false)
    }
    
    
    @IBAction func didTapCreateNewAccount() {
        let vc = ActivateMobileViewController()
        vc.viewModel = ActivateMobileViewModel()
        navigationController?.pushViewController(vc, animated: false)
    }
}
