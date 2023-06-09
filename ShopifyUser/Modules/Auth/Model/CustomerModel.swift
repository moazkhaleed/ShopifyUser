//
//  CustomerModel.swift
//  ShopifyUser
//
//  Created by Mac on 08/06/2023.
//

import Foundation
struct MyCustomer:Codable{
    var customers:[Customer]
}

struct Customer:Codable {
    var id:Int?
    var first_name:String?
    var last_name:String?
    var email:String?
    var tags:String?
}
