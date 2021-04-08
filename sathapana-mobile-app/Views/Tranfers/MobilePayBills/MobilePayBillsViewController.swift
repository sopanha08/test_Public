//
//  MobilePayBillsViewController.swift
//  sathapana-mobile-app
//
//  Created by Rith Sopanha on 7/4/21.
//

import UIKit

class MobilePayBillsViewController: UIViewController {
    
    let Data = DataSource()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }

}
extension MobilePayBillsViewController:  UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.MobilePayBillsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell {
            cell.configurePayBill(catagory: Data.MobilePayBillsList[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = TranferMobilePaymentViewController(nibName: "TranferMobilePaymentViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
