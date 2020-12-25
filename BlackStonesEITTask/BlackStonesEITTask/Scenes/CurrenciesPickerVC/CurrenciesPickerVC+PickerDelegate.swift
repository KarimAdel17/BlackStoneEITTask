//
//  CurrenciesPickerVC+PickerDelegate.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/24/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import UIKit

extension CurrenciesPickerVC: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return presenter?.getCurrenciesCount() ?? 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        UserDefaults.standard.set(presenter?.getCurrenciesName(index: 0), forKey: "base")
        return presenter?.getCurrenciesName(index: row)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        base = presenter?.getCurrenciesName(index: row)
        UserDefaults.standard.set(base, forKey: "base")
    }
    
}
