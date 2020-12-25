//
//  UIViewEx.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/25/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import UIKit

extension UIView {
    func setBorder(color: CGColor, width:CGFloat, corner:CGFloat){
        self.layer.borderColor = color
        self.layer.borderWidth = width
        self.layer.cornerRadius = corner
        self.clipsToBounds = true
    }
}
