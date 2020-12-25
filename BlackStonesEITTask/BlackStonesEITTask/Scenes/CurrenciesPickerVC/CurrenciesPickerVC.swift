//
//  CurrenciesPickerVC.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/24/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import UIKit
protocol PickerSelection {
    func getCurrenciesData(base: String)
}
class CurrenciesPickerVC: UIViewController {
    //MARK:- Variables
    var presenter: CurrenciesPickerVCPresenter?
    var delegate: PickerSelection?
    var base: String?
    
    //MARK:- Outlets
    @IBOutlet weak var pickerView: UIPickerView!
    
    //MARK:- View Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        display()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Functions
    func display() {
        presenter = CurrenciesPickerVCPresenter(view: self)
        presenter?.getCountriesData()
    }
    
    //MARK:- Actions
    @IBAction func doneAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegate?.getCurrenciesData(base: base ?? "")
    }
    @IBAction func cancelAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
