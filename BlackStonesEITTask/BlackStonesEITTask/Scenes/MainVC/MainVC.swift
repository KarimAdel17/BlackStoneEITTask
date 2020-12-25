//
//  MainVC.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/23/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import UIKit

class MainVC: UIViewController, PickerSelection {
    //MARK:- Variables
    var presenter: MainVCPresenter?
    
    //MARK:- Outlets
    @IBOutlet weak var baseCurrencyView: UIView!
    @IBOutlet weak var baseCurrencyTF: UITextField!
    @IBOutlet weak var currenciesTable: UITableView!
    
    //MARK:- View Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(returnResult())
//        checkAnagrams(s1: <#T##String#>, s2: <#T##String#>)
//        print(Fibonacci1(num: <#T##Int#>))
//        print(Fibonacci2(num: <#T##Int#>))
        
        display()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Functions
    func display() {
        presenter = MainVCPresenter(view: self)
        UI()
    }
    
    func UI() {
        currenciesTable.register(UINib(nibName: "CurrenciesCell", bundle: nil), forCellReuseIdentifier: "CurrenciesCell")
        baseCurrencyView.setBorder(color: #colorLiteral(red: 0.8745098039, green: 0.8862745098, blue: 0.8980392157, alpha: 1), width: 1, corner: 10)
    }
    
    //MARK:- Actions
    @IBAction func baseBTNAction(_ sender: UIButton) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "CurrenciesPickerVC") as! CurrenciesPickerVC
        VC.delegate = self
        present(VC, animated: true, completion: nil)
    }
    @IBAction func baseAction(_ sender: UITextField) {
        view.endEditing(true)
        
    }
    
    //MARK:- Delegate Functions
    func getCurrenciesData(base: String) {
        baseCurrencyTF.text = UserDefaults.standard.value(forKey: "base") as? String ?? ""
        print(base)
        presenter?.getCountriesData(base: base)
    }
    
}
