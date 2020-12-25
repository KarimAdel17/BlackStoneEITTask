//
//  MainVCPresenter.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/23/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import Foundation

class MainVCPresenter {
    //MARK:- Variables
    private weak var view: MainView?
    var countriesData = [String:Any]()
    var currenciesName: String?
    var currencyValue: Float?
    
    //MARK:- Initializer
    init(view: MainView) {
        self.view = view
    }
    
    //MARK:- Network Functions
    func getCountriesData(base: String) {
        view?.loadingOn()
        APIClient.getCurrenciesData(base: base) { [weak self] (result) in
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
    
    func configure(cell: CurrenciesCellView, of index: Int) {
        currenciesName = Array(countriesData.keys).sorted()[index]
        cell.set(name: currenciesName ?? "")
    }
    
    func getCurrenciesName(index: Int) -> String {
        currenciesName = Array(countriesData.keys).sorted()[index]
            return currenciesName ?? ""
        }
    
    func getCurrencyValue(index: Int) -> Float {
        currencyValue = countriesData[Array(countriesData.keys).sorted()[index]] as? Float ?? 0.0
        return currencyValue ?? 0.0
    }
}
