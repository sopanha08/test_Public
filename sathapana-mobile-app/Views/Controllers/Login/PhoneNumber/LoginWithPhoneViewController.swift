//
//  LoginWithPhoneViewController.swift
//  sathapana-mobile-app
//
//  Created by Sovanndy Ul on 29/3/21.
//

import UIKit

class LoginWithPhoneViewController: ScrollableViewController {
    var viewModel: LoginWithMobileViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackButton()
        addNextButton()
        registerNibCells()
    }
    
    private func registerNibCells() {
        ActivateMobileTableViewCell.registerNibCell(tableView)
        TextFieldTableViewCell.registerNibCell(tableView)
    }
    
    override func nextButtonDidTap() {
        
    }
    
    
    // MARK: - TableView DataSources
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        guard let loginIndexPath = LoginWithMobileIndexPath(rawValue: indexPath.row) else {
            return UITableViewCell()
        }
        let vm = viewModel.values(with: loginIndexPath)
        
        switch loginIndexPath {
        case .Header:
            let cell:ActivateMobileTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.configCell(with: vm)
            return cell
        case .PhoneNumber, .Password:
            let cell:TextFieldTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.configCell(with: vm)
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.allCases
    }
}
