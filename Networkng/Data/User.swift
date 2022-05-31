//
//  User.swift
//  Networkng
//
//  Created by wendy manrique on 30/05/22.
//

import Foundation

//{
// "code":200,
// "meta": null,
// "data": {
//"id": 123,
//"name": "Aatreya Agarwal",
//"email": "agarwal_aatreya@simonis-aufderhar.name",
//"gender": "male",
//"status": "inactive",
//}
//}

struct UserResponse : Decodable {
    
    let code: Int?
    let meta: Meta?
    let data: User?
}
struct User : Decodable {
    
    let id : Int?
    let name : String?
    let email : String?
    let gender : String?
    let status : String?
    //let create_at: Date?
    //let update_At: Date?
}
struct Meta : Decodable {
    
}
