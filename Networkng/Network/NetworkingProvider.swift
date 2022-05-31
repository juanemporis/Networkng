//
//  NetworkingProvider.swift
//  Networkng
//
//  Created by wendy manrique on 30/05/22.
//

import Foundation
import Alamofire

final class NetworkingProvider {
    
    static let shared = NetworkingProvider()
    
    private let kBaseUrl = "https://gorest.co.in/public/v2/users"
    private let kStatusOk = 200...299
    
    func getUser(id:Int) {
        
        //Se hara el llamado al alamofire
        
        let url = "\(kBaseUrl)users/\(id)"
        AF.request(url, method: .get).validate(statusCode: 200...299)
        
    }
}
