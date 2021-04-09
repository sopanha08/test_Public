//
//  DataSource.swift
//  sathapana-mobile-app
//
//  Created by Rith Sopanha on 7/4/21.
//

import Foundation


class DataSource {
    
    let MobileTranferList = [
        
        TranferMobileList(ListImage: "Tranfer_WithBank", ListTitle: "Within Sathapana Banks"),
        TranferMobileList(ListImage: "Tranfer_LocalBank", ListTitle: "To local banks"),
        TranferMobileList(ListImage: "Tranfer_Local", ListTitle: "To international banks"),
        TranferMobileList(ListImage: "Tranfer_Wing", ListTitle: "To Wing"),
        TranferMobileList(ListImage: "Tranfer_PiPay", ListTitle: "To Pipay"),
        TranferMobileList(ListImage: "Tranfer_TrueMoney", ListTitle: "To TrueMoney"),
        TranferMobileList(ListImage: "Tranfer_Bakong", ListTitle: "To Bakong Wallet"),
    ]
    
    let MobilePayBillsList = [
        
        PaymentList(ListImage: "Electricity", ListTitle: "Electricity"),
        PaymentList(ListImage: "Within_Sathapana_Banks", ListTitle: "Within Sathapana Banks"),
        PaymentList(ListImage: "Waste_Management ", ListTitle: "Waste Management"),
        PaymentList(ListImage: "Internet_& _TV", ListTitle: "Internet &  TV"),
        PaymentList(ListImage: "Education", ListTitle: "Education"),
        PaymentList(ListImage: "Insurance", ListTitle: "Insurance"),
        PaymentList(ListImage: "Ministry_Bills", ListTitle: "Ministry Bills"),
    ]
    
}
