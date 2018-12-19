//
// Names.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Names: Codable {

    public var link: Link?
    public var count: Int32
    public var nameList: [LinkElement]?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case count = "Count"
        case nameList = "NameList"
    }

    public init(link: Link?, count: Int32, nameList: [LinkElement]?) {
        self.link = link
        self.count = count
        self.nameList = nameList
    }


}
