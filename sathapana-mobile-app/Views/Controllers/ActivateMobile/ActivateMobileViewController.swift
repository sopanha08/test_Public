//
//  ActivateMobileViewController.swift
//  sathapana-mobile-app
//
//  Created by Sovanndy Ul on 23/3/21.
//

import UIKit

class ActivateMobileViewController: ScrollableViewController {
    var viewModel: ActivateMobileViewModel!
    
    // MARK: - View Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackButton()
        addNextButton()
        registerNibCells()
    }
    
    private func registerNibCells() {
        ActivateMobileTableViewCell.registerNibCell(tableView)
        TextFieldTableViewCell.registerNibCell(tableView)
        AcceptTermTableViewCell.registerNibCell(tableView)
    }
    
    // MARK: - Actions
    override func nextButtonDidTap() {
        
        let vc = PersonalInformationViewController()
        vc.viewModel = PersonalInformationViewModel()
        navigationController?.pushViewController(vc, animated: false)         
    }
    
    // MARK: - TableView DataSources
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        guard let activateMobileIndexPath = ActivateMobileIndexPath(rawValue: indexPath.row) else {
            return UITableViewCell()
        }
        let vm = viewModel.values(with: activateMobileIndexPath)
        
        switch activateMobileIndexPath {
        case .Header:
            let cell:ActivateMobileTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.configCell(with: vm)
            return cell
        case .AccountNumber, .PhoneNumber, .DateOfBirth:
            let cell:TextFieldTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.configCell(with: vm)
            cell.delegate = self
            return cell
        case .TermCondition:
            let cell:AcceptTermTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.configCell(with: vm)
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.allCases
    }
}

extension ActivateMobileViewController: TextFieldTableViewCellDelgate {
    func didUpdateTextField(with string: String,
                            activateMobileIndexPath: ActivateMobileIndexPath) {
        switch activateMobileIndexPath {
        case .AccountNumber:
            break
        case.DateOfBirth:
            break
        case .PhoneNumber:
            break;
        default:
            break
        }
    }
}
