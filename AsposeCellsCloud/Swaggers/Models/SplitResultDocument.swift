//
// SplitResultDocument.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SplitResultDocument: Codable {

    public var link: Link?
    public var id: Int32

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case id = "Id"
    }

    public init(link: Link?, id: Int32) {
        self.link = link
        self.id = id
    }


}

