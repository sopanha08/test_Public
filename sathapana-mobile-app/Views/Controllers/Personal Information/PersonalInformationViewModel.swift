//
//  PersonalInformationViewModel.swift
//  sathapana-mobile-app
//
//  Created by Sovanndy Ul on 25/3/21.
//

import UIKit

enum PersonalInformationIndexPath: Int, CaseIterable {
    case Header
    case FullName
    case Gender
    case DateOfBirth
    case NibNumber
    case NibValidate
    case Email
}

class PersonalInformationViewModel: BaseViewModel {
    
    var allCases: Int {
        return PersonalInformationIndexPath.allCases.count
    }

    func values(with activateMobileIndexPath: PersonalInformationIndexPath) -> BaseViewModel {
        switch activateMobileIndexPath {
        case .Header:
            return TextFieldViewModel(with: TextFieldModel(placeHolder: "personal_information_title".localizedString,
                                      value: "personal_information_description".localizedString,
                                      imageName: "personal_info"))
        case .FullName:
            return TextFieldViewModel(with: TextFieldModel(placeHolder: "placeholder_your_name".localizedString,
                                      value: "Sovanndy Ul",
                                      imageName: "leading_phoneNumber"))

        case .DateOfBirth:
            return TextFieldViewModel(with: TextFieldModel(placeHolder: "placeholder_date_of_birth".localizedString,
                                      imageName: "leading_phoneNumber"))

        case .NibNumber:
            return TextFieldViewModel(with: TextFieldModel(placeHolder: "placeholder_nib_number".localizedString,
                                      imageName: "leading_phoneNumber"))
        case .NibValidate:
            return TextFieldViewModel(with: TextFieldModel(placeHolder: "placeholder_nib_expired_at".localizedString,
                                      imageName: "leading_phoneNumber"))
        case .Email:
            return TextFieldViewModel(with: TextFieldModel(placeHolder: "placeholder_email".localizedString,
                                      imageName: "leading_phoneNumber"))
        case .Gender:
            return TextFieldViewModel(with: TextFieldModel(placeHolder: "placeholder_choose_gender".localizedString,
                                      imageName: "leading_phoneNumber"))
        }
        
    }
}
