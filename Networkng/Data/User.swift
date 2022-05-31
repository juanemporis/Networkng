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
    let createdAt: Date?
    let updatedAt: Date?
    
    //Con este codigo podras modificar los nombres de cada uno d elos parametros
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case gender
        case status
        case createdAT = "created_at"
        case ipdatedAT = "updated_at"
    }
}
struct Meta : Decodable {
    
}
