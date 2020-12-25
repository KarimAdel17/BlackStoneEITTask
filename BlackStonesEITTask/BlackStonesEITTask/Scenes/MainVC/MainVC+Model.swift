//
//  MainVC+Model.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/23/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import Foundation

struct Currency : Codable {
    
    var base : String?
    var date : String?
    var rates : Rate?
    
    enum CodingKeys: String, CodingKey {
        case base = "base"
        case date = "date"
        case rates = "rates"
    }
}

struct Rate : Codable {
    
    var AUD : Float?
    var BGN : Float?
    var BRL : Float?
    var CAD : Float?
    var CHF : Float?
    var CNY : Float?
    var CZK : Float?
    var DKK : Float?
    var GBP : Float?
    var HKD : Float?
    var HRK : Float?
    var HUF : Float?
    var IDR : Float?
    var ILS : Float?
    var INR : Float?
    var ISK : Float?
    var JPY : Float?
    var KRW : Float?
    var MXN : Float?
    var MYR : Float?
    var NOK : Float?
    var NZD : Float?
    var PHP : Float?
    var PLN : Float?
    var RON : Float?
    var RUB : Float?
    var SEK : Float?
    var SGD : Float?
    var THB : Float?
    var TRY : Float?
    var USD : Float?
    var ZAR : Float?
    
    var dictionary: [String: Any] {
        return ["AUD" : AUD ?? 0.0,
                "BGN" : BGN ?? 0.0,
                "BRL" : BRL ?? 0.0,
                "CAD" : CAD ?? 0.0,
                "CHF" : CHF ?? 0.0,
                "CNY" : CNY ?? 0.0,
                "CZK" : CZK ?? 0.0,
                "DKK" : DKK ?? 0.0,
                "GBP" : GBP ?? 0.0,
                "HKD" : HKD ?? 0.0,
                "HRK" : HRK ?? 0.0,
                "HUF" : HUF ?? 0.0,
                "IDR" : IDR ?? 0.0,
                "ILS" : ILS ?? 0.0,
                "INR" : INR ?? 0.0,
                "ISK" : ISK ?? 0.0,
                "JPY" : JPY ?? 0.0,
                "KRW" : KRW ?? 0.0,
                "MXN" : MXN ?? 0.0,
                "MYR" : MYR ?? 0.0,
                "NOK" : NOK ?? 0.0,
                "NZD" : NZD ?? 0.0,
                "PHP" : PHP ?? 0.0,
                "PLN" : PLN ?? 0.0,
                "RON" : RON ?? 0.0,
                "RUB" : RUB ?? 0.0,
                "SEK" : SEK ?? 0.0,
                "SGD" : SGD ?? 0.0,
                "THB" : THB ?? 0.0,
                "TRY" : TRY ?? 0.0,
                "USD" : USD ?? 0.0,
                "ZAR" : ZAR ?? 0.0]
    }
    
    var nsDictionary: NSDictionary {
        return dictionary as NSDictionary
    }
}
