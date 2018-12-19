//
// TextItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct TextItem: Codable {

    public var link: Link?
    public var text: String?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case text = "Text"
    }

    public init(link: Link?, text: String?) {
        self.link = link
        self.text = text
    }


}
