//
//  TableViewCell.swift
//  sathapana-mobile-app
//
//  Created by Rith Sopanha on 7/4/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    

    @IBOutlet weak var tranferImage: UIImageView!
    @IBOutlet weak var tranferName: UILabel!
    @IBOutlet weak var tranferArrow: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(catagory : TranferMobileList) {
        tranferImage.image = UIImage(named: catagory.ListImage)
        tranferName.text = catagory.ListTitle
    }
    
    func configurePayBill(catagory: PaymentList) {
        tranferImage.image = UIImage(named: catagory.ListImage)
        tranferName.text = catagory.ListTitle
    }
    
}
