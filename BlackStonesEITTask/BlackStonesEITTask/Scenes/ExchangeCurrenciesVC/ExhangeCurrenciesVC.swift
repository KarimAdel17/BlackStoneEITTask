//
//  ExhangeCurrenciesVC.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/25/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import UIKit

class ExhangeCurrenciesVC: UIViewController {
    //MARK:- Variables
    var baseCurrencyName: String?
    var currencyName: String?
    var currencyValue: Float?
    
    //MARK:- Outlets
    @IBOutlet weak var baseCurrency: UILabel!
    @IBOutlet weak var enterTF: UITextField!
    @IBOutlet weak var otherCurrency: UILabel!
    @IBOutlet weak var resultTF: UITextField!
    
    //MARK:- View Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        display()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Functions
    func display() {
        UI()
    }
    
    func UI() {
        baseCurrency.text = UserDefaults.standard.value(forKey: "base") as? String ?? ""
        otherCurrency.text = currencyName
    }
    
    //MARK:- Actions
    @IBAction func dismissAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func enterTFChanged(_ sender: UITextField) {
        resultTF.text = "\((currencyValue ?? 0.0) * (Float(enterTF.text ?? "") ?? 0.0))"
    }
}
