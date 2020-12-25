//
//  APIClient.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/23/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import Foundation
import Alamofire
import SVProgressHUD

class APIClient {
    @discardableResult
    static func performRequest<T:Decodable>(url: String, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders?, decoder: JSONDecoder = JSONDecoder(), completion:@escaping (Result<T, AFError>)->Void) -> DataRequest {
//        ActivityIndicatorManager.shared.showProgressView()
        
//        SVProgressHUD.show()
        
        return AF.request(url, method: method, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseDecodable (decoder: decoder){ (response: DataResponse<T, AFError>) in
            
//            SVProgressHUD.dismiss()
            
            completion(response.result)
        }
        
//        return AF.request(route).responseDecodable (decoder: decoder){ (response: DataResponse<T, AFError>) in
//                print(response.result)
////            ActivityIndicatorManager.shared.hideProgressView()
//                completion(response.result)
//        }
    }
    
    static func getCurrenciesData(base: String, completion:@escaping (Result<Currency, AFError>)->()) {
        
        let url = "\(API.baseURL)?base=\(base)"
        
        APIClient.performRequest(url: url, method: .get, parameters: nil, headers: nil, completion: completion)
    }
}
