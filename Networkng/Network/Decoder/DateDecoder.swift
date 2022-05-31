//
//  DateDecoder.swift
//  Networkng
//
//  Created by wendy manrique on 31/05/22.
//

import Foundation

final class DateDecoder: JSONDecoder {
    let dateFormatter = DateFormatter()
    
    override init () {
        super.init()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
        dataDecodingStrategy = .formatted(dateFormatter)
    }
    
}
