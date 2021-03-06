//
// Validations.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Validations: Codable {

    public var link: Link?
    public var count: Int32
    public var validationList: [LinkElement]?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case count = "Count"
        case validationList = "ValidationList"
    }

    public init(link: Link?, count: Int32, validationList: [LinkElement]?) {
        self.link = link
        self.count = count
        self.validationList = validationList
    }


}

