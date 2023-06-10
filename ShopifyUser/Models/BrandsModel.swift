//
//  BrandsModel.swift
//  ShopifyUser
//
//  Created by Mac on 09/06/2023.
//

import Foundation


class BrandsResponse: Codable {
    let smartCollections: [SmartCollection]?

    init(smartCollections: [SmartCollection]?) {
        self.smartCollections = smartCollections
    }
}

// MARK: - SmartCollection
class SmartCollection: Codable {
    let id: Int?
    let handle, title: String?
    let updatedAt: Date?
    let bodyHTML: String?
    let publishedAt: Date?
    let sortOrder: SortOrder?
    let templateSuffix: JSONNull?
    let disjunctive: Bool?
    let rules: [Rule]?
    let publishedScope: String?
    let adminGraphqlAPIID: String?
    let image: Image?

    enum CodingKeys: String, CodingKey {
        case id, handle, title
        case updatedAt = "updated_at"
        case bodyHTML = "body_html"
        case publishedAt = "published_at"
        case sortOrder = "sort_order"
        case templateSuffix = "template_suffix"
        case disjunctive, rules
        case publishedScope = "published_scope"
        case adminGraphqlAPIID = "admin_graphql_api_id"
        case image
    }

    init(id: Int?, handle: String?, title: String?, updatedAt: Date?, bodyHTML: String?, publishedAt: Date?, sortOrder: SortOrder?, templateSuffix: JSONNull?, disjunctive: Bool?, rules: [Rule]?, publishedScope: String?, adminGraphqlAPIID: String?, image: Image?) {
        self.id = id
        self.handle = handle
        self.title = title
        self.updatedAt = updatedAt
        self.bodyHTML = bodyHTML
        self.publishedAt = publishedAt
        self.sortOrder = sortOrder
        self.templateSuffix = templateSuffix
        self.disjunctive = disjunctive
        self.rules = rules
        self.publishedScope = publishedScope
        self.adminGraphqlAPIID = adminGraphqlAPIID
        self.image = image
    }
}

// MARK: - Image
class Image: Codable {
    let createdAt: Date?
    let alt: JSONNull?
    let width, height: Int?
    let src: String?

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case alt, width, height, src
    }

    init(createdAt: Date?, alt: JSONNull?, width: Int?, height: Int?, src: String?) {
        self.createdAt = createdAt
        self.alt = alt
        self.width = width
        self.height = height
        self.src = src
    }
}



// MARK: - Rule
class Rule: Codable {
    let column: String?
    let relation: String?
    let condition: String?

    init(column: String?, relation: String?, condition: String?) {
        self.column = column
        self.relation = relation
        self.condition = condition
    }
}




// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
