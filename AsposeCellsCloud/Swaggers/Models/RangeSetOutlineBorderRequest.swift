//
// RangeSetOutlineBorderRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct RangeSetOutlineBorderRequest: Codable {

    public var borderColor: Color?
    public var range: Range?
    public var borderStyle: String?
    public var borderEdge: String?

public enum CodingKeys: String, CodingKey { 
        case borderColor = "borderColor"
        case range = "Range"
        case borderStyle = "borderStyle"
        case borderEdge = "borderEdge"
    }

    public init(borderColor: Color?, range: Range?, borderStyle: String?, borderEdge: String?) {
        self.borderColor = borderColor
        self.range = range
        self.borderStyle = borderStyle
        self.borderEdge = borderEdge
    }


}

