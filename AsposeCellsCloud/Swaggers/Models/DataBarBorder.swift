//
// DataBarBorder.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DataBarBorder: Codable {

    /** Gets or sets the border&#39;s color of data bars specified by a conditional formatting rule. */
    public var color: Color?
    /** Gets or sets the border&#39;s type of data bars specified by a conditional formatting rule. */
    public var type: String?

public enum CodingKeys: String, CodingKey { 
        case color = "Color"
        case type = "Type"
    }

    public init(color: Color?, type: String?) {
        self.color = color
        self.type = type
    }


}
