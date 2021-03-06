//
// TextItems.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct TextItems: Codable {

    public var link: Link?
    public var textItemList: [TextItem]?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case textItemList = "TextItemList"
    }

    public init(link: Link?, textItemList: [TextItem]?) {
        self.link = link
        self.textItemList = textItemList
    }


}

