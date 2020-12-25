//
//  CurrenciesPickerVC+PresenterDelegate.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/25/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import UIKit
import SVProgressHUD

extension CurrenciesPickerVC: MainView {
    func loadingOn() {
        SVProgressHUD.show()
    }
    
    func loadingOff() {
        SVProgressHUD.dismiss()
    }
    
    func show(Alert: String) {
        
    }
    
    func fetchedSuccessfully() {
        pickerView.reloadAllComponents()
    }
    
    
}
