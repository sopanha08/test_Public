//
//  OnboardViewController.swift
//  sathapana-mobile-app
//
//  Created by Sovanndy Ul on 25/3/21.
//

import UIKit

class OnboardViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addNextButton()
    }
    
    override func nextButtonDidTap() {
        let viewController = ActivateMobileViewController()
        viewController.viewModel = ActivateMobileViewModel()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
