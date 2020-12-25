//
//  GeneralProtocol.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/25/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import Foundation
protocol MainView: class {
    func loadingOn()
    func loadingOff()
    func show(Alert: String)
    func fetchedSuccessfully()
}
