//
//  ProductInfoModel.swift
//  ShopifyUser
//
//  Created by Mac on 09/06/2023.
//

import Foundation


struct ProductInfo: Codable {
    let product: Product?
}


struct Product: Codable {
    let id: Int?
    let title : String?
    let bodyHTML : String?
    let vendor : String?
    let productType: String?
    let tags:String?
    let variants: [Variant]?
    let options: [Option]?
    let images: [Image]?
    let image: Image?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case bodyHTML = "body_html"
        case vendor = "vendor"
        case productType = "product_type"
        case tags = "tags"
        case variants = "variants"
        case options = "options"
        case images = "images"
        case image = "image"
    }
}

struct Image: Codable {
    let id, productID, position: Int
    let createdAt, updatedAt: Date
    let width, height: Int
    let src: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case productID = "product_id"
        case position
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case width, height, src
    }
}


struct Option: Codable {
    let id, productID: Int
    let name: String
    let position: Int
    let values: [String]

    enum CodingKeys: String, CodingKey {
        case id
        case productID = "product_id"
        case name, position, values
    }
}

struct Variant: Codable {
    let id, productID: Int
    let title, price, sku: String
    let position: Int
    let inventoryPolicy: String
    let fulfillmentService, inventoryManagement, option1, option2: String
    let createdAt, updatedAt: Date
    let taxable: Bool
    let grams: Int
    let weight: Int
    let weightUnit: String
    let inventoryItemID, inventoryQuantity, oldInventoryQuantity: Int
    let requiresShipping: Bool
    let adminGraphqlAPIID: String

    enum CodingKeys: String, CodingKey {
        case id
        case productID = "product_id"
        case title, price, sku, position
        case inventoryPolicy = "inventory_policy"
        case fulfillmentService = "fulfillment_service"
        case inventoryManagement = "inventory_management"
        case option1, option2
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case taxable, grams
        case weight
        case weightUnit = "weight_unit"
        case inventoryItemID = "inventory_item_id"
        case inventoryQuantity = "inventory_quantity"
        case oldInventoryQuantity = "old_inventory_quantity"
        case requiresShipping = "requires_shipping"
        case adminGraphqlAPIID = "admin_graphql_api_id"
    }
}

