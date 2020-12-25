//
//  CurrenciesPickerVCPresenter.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/24/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import Foundation

class CurrenciesPickerVCPresenter {
    //MARK:- Variables
    private weak var view: MainView?
    var countriesData = [String:Any]()
    var currenciesName: String?
    
    //MARK:- Initializer
    init(view: MainView) {
        self.view = view
    }
    
    //MARK:- Network Functions
    func getCountriesData() {
        view?.loadingOn()
        APIClient.getCurrenciesData(base: "") { [weak self] (result) in
            guard let self = self else { return }
            self.view?.loadingOff()
            switch result {
            case .success(let currency):
                self.saveData(currency: currency)
            case .failure(let error):
                self.view?.show(Alert: error.localizedDescription)
            }
        }
    }
    
    private func saveData(currency: Currency) {
        
        countriesData = currency.rates?.nsDictionary as? [String : Any] ?? [:]
        
        view?.fetchedSuccessfully()
        
    }
    
    //MARK:- Cells Functions
    func getCurrenciesCount() -> Int {
        return countriesData.count
    }
    
    func getCurrenciesName(index: Int) -> String {
        currenciesName = Array(countriesData.keys).sorted()[index]
        return currenciesName ?? ""
    }
}
