//
//  CurrenciesCell.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/25/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import UIKit
protocol CurrenciesCellView {
    func set(name: String)
}
class CurrenciesCell: UITableViewCell, CurrenciesCellView {

    @IBOutlet weak var currencyName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(name: String) {
        currencyName.text = name
    }
    
}
