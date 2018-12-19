//
// OleObjects.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OleObjects: Codable {

    public var link: Link?
    public var oleObjectList: [LinkElement]?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case oleObjectList = "OleObjectList"
    }

    public init(link: Link?, oleObjectList: [LinkElement]?) {
        self.link = link
        self.oleObjectList = oleObjectList
    }


}
