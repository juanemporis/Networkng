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
    
    private let kBaseUrl = "https://gorest.co.in/public-api"
    private let kStatusOk = 200...299
    
    func getUser(id: Int, success: @escaping (_ user : User) -> (), failure: @escaping (_ error: Error?) -> ()) {
        
        //Se hara el llamado al alamofire
        
        let url = "\(kBaseUrl)users/\(id)"
        
        //Se hace el llamado al struc UserResponse creado en User
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: UserResponse.self,decoder: DateDecoder()) {
        response in
            
            if let user = response.value?.data {
                success(user)
            }else {
                failure(response.error)
            }
            
        }
        
    }
}
