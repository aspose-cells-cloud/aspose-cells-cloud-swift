//
// Hyperlinks.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Hyperlinks: Codable {

    public var link: Link?
    public var count: Int32
    public var hyperlinkList: [LinkElement]?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case count = "Count"
        case hyperlinkList = "HyperlinkList"
    }

    public init(link: Link?, count: Int32, hyperlinkList: [LinkElement]?) {
        self.link = link
        self.count = count
        self.hyperlinkList = hyperlinkList
    }


}

