//
// Shapes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Shapes: Codable {

    public var link: Link?
    public var shapeList: [LinkElement]?

public enum CodingKeys: String, CodingKey { 
        case link = "link"
        case shapeList = "ShapeList"
    }

    public init(link: Link?, shapeList: [LinkElement]?) {
        self.link = link
        self.shapeList = shapeList
    }


}

