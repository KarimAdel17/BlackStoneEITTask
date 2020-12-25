//
//  MainVC+TableDelegate.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/23/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import UIKit

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getCurrenciesCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrenciesCell", for: indexPath) as! CurrenciesCell
        
        presenter?.configure(cell: cell, of: indexPath.row)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "ExhangeCurrenciesVC") as! ExhangeCurrenciesVC
                
        VC.currencyName = presenter?.getCurrenciesName(index: indexPath.row)
        
        VC.currencyValue = presenter?.getCurrencyValue(index: indexPath.row)
        
        present(VC, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
